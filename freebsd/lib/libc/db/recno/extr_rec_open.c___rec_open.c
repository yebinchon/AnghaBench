
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
typedef int off_t ;
struct TYPE_24__ {int lorder; int * prefix; int * compare; int psize; scalar_t__ minkeypage; scalar_t__ maxkeypage; int cachesize; scalar_t__ flags; } ;
struct TYPE_23__ {int sync; int seq; int put; int get; int fd; int del; int close; TYPE_2__* internal; } ;
struct TYPE_22__ {scalar_t__ bt_reclen; char bt_bval; int bt_rfd; scalar_t__ (* bt_irec ) (TYPE_2__*,int ) ;scalar_t__ bt_msize; scalar_t__ bt_smap; scalar_t__ bt_cmap; scalar_t__ bt_emap; int flags; int bt_mp; int * bt_rfp; } ;
struct TYPE_21__ {int flags; scalar_t__ reclen; char bval; int * bfname; int lorder; int psize; int cachesize; } ;
typedef TYPE_1__ RECNOINFO ;
typedef TYPE_2__ PAGE ;
typedef TYPE_3__ DB ;
typedef TYPE_4__ BTREEINFO ;
typedef TYPE_2__ BTREE ;


 int EINVAL ;
 int ESPIPE ;
 int F_CLR (TYPE_2__*,int) ;
 scalar_t__ F_ISSET (TYPE_2__*,int) ;
 int F_SET (TYPE_2__*,int) ;
 scalar_t__ MAP_FAILED ;
 int MAP_PRIVATE ;
 int MAX_REC_NUMBER ;
 int MPOOL_DIRTY ;
 int O_ACCMODE ;
 int O_CLOEXEC ;


 int PROT_READ ;
 int P_BLEAF ;
 int P_RLEAF ;
 int P_ROOT ;
 int P_TYPE ;
 scalar_t__ RET_ERROR ;
 int R_CLOSEFP ;
 int R_EOF ;
 int R_FIXEDLEN ;
 int R_FIXLEN ;
 int R_INMEM ;
 int R_MEMMAPPED ;
 int R_NOKEY ;
 int R_RDONLY ;
 int R_RECNO ;
 int R_SNAPSHOT ;
 int SEEK_CUR ;
 int S_IRUSR ;
 int S_IWUSR ;
 int __bt_close (TYPE_3__*) ;
 TYPE_3__* __bt_open (int *,int,int,TYPE_4__*,int) ;
 int __rec_close ;
 int __rec_delete ;
 int __rec_fd ;
 scalar_t__ __rec_fmap (TYPE_2__*,int ) ;
 scalar_t__ __rec_fpipe (TYPE_2__*,int ) ;
 int __rec_get ;
 int __rec_put ;
 int __rec_seq ;
 int __rec_sync ;
 scalar_t__ __rec_vmap (TYPE_2__*,int ) ;
 scalar_t__ __rec_vpipe (TYPE_2__*,int ) ;
 int _close (int) ;
 scalar_t__ _fstat (int,struct stat*) ;
 int _open (char const*,int,int) ;
 int errno ;
 int * fdopen (int,char*) ;
 int lseek (int,int ,int ) ;
 scalar_t__ mmap (int *,scalar_t__,int ,int ,int,int ) ;
 TYPE_2__* mpool_get (int ,int ,int ) ;
 int mpool_put (int ,TYPE_2__*,int ) ;
 scalar_t__ stub1 (TYPE_2__*,int ) ;

DB *
__rec_open(const char *fname, int flags, int mode, const RECNOINFO *openinfo,
    int dflags)
{
 BTREE *t;
 BTREEINFO btopeninfo;
 DB *dbp;
 PAGE *h;
 struct stat sb;
 int rfd, sverrno;


 if (fname != ((void*)0) && (rfd = _open(fname, flags | O_CLOEXEC, mode)) < 0)
  return (((void*)0));


 dbp = ((void*)0);
 if (openinfo) {
  if (openinfo->flags & ~(R_FIXEDLEN | R_NOKEY | R_SNAPSHOT))
   goto einval;
  btopeninfo.flags = 0;
  btopeninfo.cachesize = openinfo->cachesize;
  btopeninfo.maxkeypage = 0;
  btopeninfo.minkeypage = 0;
  btopeninfo.psize = openinfo->psize;
  btopeninfo.compare = ((void*)0);
  btopeninfo.prefix = ((void*)0);
  btopeninfo.lorder = openinfo->lorder;
  dbp = __bt_open(openinfo->bfname,
      128, S_IRUSR | S_IWUSR, &btopeninfo, dflags);
 } else
  dbp = __bt_open(((void*)0), 128, S_IRUSR | S_IWUSR, ((void*)0), dflags);
 if (dbp == ((void*)0))
  goto err;







 t = dbp->internal;
 if (openinfo) {
  if (openinfo->flags & R_FIXEDLEN) {
   F_SET(t, R_FIXLEN);
   t->bt_reclen = openinfo->reclen;
   if (t->bt_reclen == 0)
    goto einval;
  }
  t->bt_bval = openinfo->bval;
 } else
  t->bt_bval = '\n';

 F_SET(t, R_RECNO);
 if (fname == ((void*)0))
  F_SET(t, R_EOF | R_INMEM);
 else
  t->bt_rfd = rfd;

 if (fname != ((void*)0)) {





  errno = 0;
  if (lseek(rfd, (off_t)0, SEEK_CUR) == -1 && errno == ESPIPE) {
   switch (flags & O_ACCMODE) {
   case 129:
    F_SET(t, R_RDONLY);
    break;
   default:
    goto einval;
   }
slow: if ((t->bt_rfp = fdopen(rfd, "r")) == ((void*)0))
    goto err;
   F_SET(t, R_CLOSEFP);
   t->bt_irec =
       F_ISSET(t, R_FIXLEN) ? __rec_fpipe : __rec_vpipe;
  } else {
   switch (flags & O_ACCMODE) {
   case 129:
    F_SET(t, R_RDONLY);
    break;
   case 128:
    break;
   default:
    goto einval;
   }

   if (_fstat(rfd, &sb))
    goto err;
   if (sb.st_size == 0)
    F_SET(t, R_EOF);
   else {
    goto slow;

   }
  }
 }


 dbp->close = __rec_close;
 dbp->del = __rec_delete;
 dbp->fd = __rec_fd;
 dbp->get = __rec_get;
 dbp->put = __rec_put;
 dbp->seq = __rec_seq;
 dbp->sync = __rec_sync;


 if ((h = mpool_get(t->bt_mp, P_ROOT, 0)) == ((void*)0))
  goto err;
 if ((h->flags & P_TYPE) == P_BLEAF) {
  F_CLR(h, P_TYPE);
  F_SET(h, P_RLEAF);
  mpool_put(t->bt_mp, h, MPOOL_DIRTY);
 } else
  mpool_put(t->bt_mp, h, 0);

 if (openinfo && openinfo->flags & R_SNAPSHOT &&
     !F_ISSET(t, R_EOF | R_INMEM) &&
     t->bt_irec(t, MAX_REC_NUMBER) == RET_ERROR)
  goto err;
 return (dbp);

einval: errno = EINVAL;
err: sverrno = errno;
 if (dbp != ((void*)0))
  (void)__bt_close(dbp);
 if (fname != ((void*)0))
  (void)_close(rfd);
 errno = sverrno;
 return (((void*)0));
}
