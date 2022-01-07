
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct stat {int st_blksize; scalar_t__ st_size; } ;
typedef int ssize_t ;
typedef int pgno_t ;
typedef int indx_t ;
struct TYPE_16__ {scalar_t__ magic; int version; int psize; int free; int nrecs; int flags; } ;
struct TYPE_15__ {int flags; int psize; int minkeypage; int lorder; int cachesize; int * prefix; int * compare; } ;
struct TYPE_14__ {int bt_fd; int bt_lorder; int bt_rfd; int bt_free; int bt_nrecs; int bt_psize; scalar_t__ bt_ovflsize; struct TYPE_14__* bt_dbp; int * bt_mp; int sync; int seq; int put; int get; int fd; int del; int close; struct TYPE_14__* internal; int type; int * bt_pfx; int * bt_cmp; int bt_order; } ;
typedef TYPE_1__ DB ;
typedef TYPE_2__ BTREEINFO ;
typedef TYPE_1__ BTREE ;
typedef TYPE_4__ BTMETA ;


 int BIG_ENDIAN ;
 int BTDATAOFF ;
 scalar_t__ BTREEMAGIC ;
 scalar_t__ BTREEVERSION ;
 int B_DB_LOCK ;
 int B_DB_SHMEM ;
 int B_DB_TXN ;
 int B_INMEM ;
 int B_METADIRTY ;
 int B_NEEDSWAP ;
 int B_NODUPS ;
 int B_RDONLY ;
 int DB_BTREE ;
 int DB_LOCK ;
 int DB_SHMEM ;
 int DB_TXN ;
 void* DEFMINKEYPAGE ;
 int EFTYPE ;
 int EINVAL ;
 int F_CLR (TYPE_1__*,int) ;
 int F_ISSET (TYPE_1__*,int) ;
 int F_SET (TYPE_1__*,int) ;
 int LITTLE_ENDIAN ;
 int MAX_PAGE_OFFSET ;
 int MINCACHE ;
 int MINPSIZE ;
 int M_32_SWAP (int) ;
 scalar_t__ NBLEAFDBT (int ,int ) ;
 int NOT ;
 int NOVFLSIZE ;
 int O_ACCMODE ;
 int O_CLOEXEC ;



 int P_INVALID ;
 scalar_t__ RET_ERROR ;
 int R_DUP ;
 int SAVEMETA ;
 int __bt_close ;
 void* __bt_defcmp ;
 void* __bt_defpfx ;
 int __bt_delete ;
 int __bt_fd ;
 int __bt_get ;
 int __bt_pgin ;
 int __bt_pgout ;
 int __bt_put ;
 int __bt_seq ;
 int __bt_sync ;
 int _close (int) ;
 scalar_t__ _fstat (int,struct stat*) ;
 int _open (char const*,int,int) ;
 int _read (int,TYPE_4__*,int) ;
 int byteorder () ;
 scalar_t__ calloc (int,int) ;
 int errno ;
 int free (TYPE_1__*) ;
 int howmany (int,int) ;
 int mpool_filter (int *,int ,int ,TYPE_1__*) ;
 int * mpool_open (int *,int,int,int ) ;
 scalar_t__ nroot (TYPE_1__*) ;
 int tmp () ;

DB *
__bt_open(const char *fname, int flags, int mode, const BTREEINFO *openinfo, int dflags)
{
 struct stat sb;
 BTMETA m;
 BTREE *t;
 BTREEINFO b;
 DB *dbp;
 pgno_t ncache;
 ssize_t nr;
 int machine_lorder, saved_errno;

 t = ((void*)0);
 machine_lorder = byteorder();
 if (openinfo) {
  b = *openinfo;


  if (b.flags & ~(R_DUP))
   goto einval;






  if (b.psize &&
      (b.psize < MINPSIZE || b.psize > MAX_PAGE_OFFSET + 1 ||
      b.psize & (sizeof(indx_t) - 1) ))
   goto einval;


  if (b.minkeypage) {
   if (b.minkeypage < 2)
    goto einval;
  } else
   b.minkeypage = DEFMINKEYPAGE;


  if (b.compare == ((void*)0)) {
   b.compare = __bt_defcmp;
   if (b.prefix == ((void*)0))
    b.prefix = __bt_defpfx;
  }

  if (b.lorder == 0)
   b.lorder = machine_lorder;
 } else {
  b.compare = __bt_defcmp;
  b.cachesize = 0;
  b.flags = 0;
  b.lorder = machine_lorder;
  b.minkeypage = DEFMINKEYPAGE;
  b.prefix = __bt_defpfx;
  b.psize = 0;
 }


 if (b.lorder != BIG_ENDIAN && b.lorder != LITTLE_ENDIAN)
  goto einval;


 if ((t = (BTREE *)calloc(1, sizeof(BTREE))) == ((void*)0))
  goto err;
 t->bt_fd = -1;
 t->bt_lorder = b.lorder;
 t->bt_order = NOT;
 t->bt_cmp = b.compare;
 t->bt_pfx = b.prefix;
 t->bt_rfd = -1;

 if ((t->bt_dbp = dbp = (DB *)calloc(1, sizeof(DB))) == ((void*)0))
  goto err;
 if (t->bt_lorder != machine_lorder)
  F_SET(t, B_NEEDSWAP);

 dbp->type = DB_BTREE;
 dbp->internal = t;
 dbp->close = __bt_close;
 dbp->del = __bt_delete;
 dbp->fd = __bt_fd;
 dbp->get = __bt_get;
 dbp->put = __bt_put;
 dbp->seq = __bt_seq;
 dbp->sync = __bt_sync;





 if (fname) {
  switch (flags & O_ACCMODE) {
  case 130:
   F_SET(t, B_RDONLY);
   break;
  case 129:
   break;
  case 128:
  default:
   goto einval;
  }

  if ((t->bt_fd = _open(fname, flags | O_CLOEXEC, mode)) < 0)
   goto err;

 } else {
  if ((flags & O_ACCMODE) != 129)
   goto einval;
  if ((t->bt_fd = tmp()) == -1)
   goto err;
  F_SET(t, B_INMEM);
 }

 if (_fstat(t->bt_fd, &sb))
  goto err;
 if (sb.st_size) {
  if ((nr = _read(t->bt_fd, &m, sizeof(BTMETA))) < 0)
   goto err;
  if (nr != sizeof(BTMETA))
   goto eftype;
  if (m.magic == BTREEMAGIC)
   F_CLR(t, B_NEEDSWAP);
  else {
   F_SET(t, B_NEEDSWAP);
   M_32_SWAP(m.magic);
   M_32_SWAP(m.version);
   M_32_SWAP(m.psize);
   M_32_SWAP(m.free);
   M_32_SWAP(m.nrecs);
   M_32_SWAP(m.flags);
  }
  if (m.magic != BTREEMAGIC || m.version != BTREEVERSION)
   goto eftype;
  if (m.psize < MINPSIZE || m.psize > MAX_PAGE_OFFSET + 1 ||
      m.psize & (sizeof(indx_t) - 1) )
   goto eftype;
  if (m.flags & ~SAVEMETA)
   goto eftype;
  b.psize = m.psize;
  F_SET(t, m.flags);
  t->bt_free = m.free;
  t->bt_nrecs = m.nrecs;
 } else {




  if (b.psize == 0) {
   b.psize = sb.st_blksize;
   if (b.psize < MINPSIZE)
    b.psize = MINPSIZE;
   if (b.psize > MAX_PAGE_OFFSET + 1)
    b.psize = MAX_PAGE_OFFSET + 1;
  }


  if (!(b.flags & R_DUP))
   F_SET(t, B_NODUPS);

  t->bt_free = P_INVALID;
  t->bt_nrecs = 0;
  F_SET(t, B_METADIRTY);
 }

 t->bt_psize = b.psize;


 if (b.cachesize && b.cachesize & (b.psize - 1) )
  b.cachesize += (~b.cachesize & (b.psize - 1) ) + 1;
 if (b.cachesize < b.psize * MINCACHE)
  b.cachesize = b.psize * MINCACHE;


 ncache = howmany(b.cachesize, t->bt_psize);
 t->bt_ovflsize = (t->bt_psize - BTDATAOFF) / b.minkeypage -
     (sizeof(indx_t) + NBLEAFDBT(0, 0));
 if (t->bt_ovflsize < NBLEAFDBT(NOVFLSIZE, NOVFLSIZE) + sizeof(indx_t))
  t->bt_ovflsize =
      NBLEAFDBT(NOVFLSIZE, NOVFLSIZE) + sizeof(indx_t);


 if ((t->bt_mp =
     mpool_open(((void*)0), t->bt_fd, t->bt_psize, ncache)) == ((void*)0))
  goto err;
 if (!F_ISSET(t, B_INMEM))
  mpool_filter(t->bt_mp, __bt_pgin, __bt_pgout, t);


 if (nroot(t) == RET_ERROR)
  goto err;


 if (dflags & DB_LOCK)
  F_SET(t, B_DB_LOCK);
 if (dflags & DB_SHMEM)
  F_SET(t, B_DB_SHMEM);
 if (dflags & DB_TXN)
  F_SET(t, B_DB_TXN);

 return (dbp);

einval: errno = EINVAL;
 goto err;

eftype: errno = EFTYPE;
 goto err;

err: saved_errno = errno;
 if (t) {
  if (t->bt_dbp)
   free(t->bt_dbp);
  if (t->bt_fd != -1)
   (void)_close(t->bt_fd);
  free(t);
 }
 errno = saved_errno;
 return (((void*)0));
}
