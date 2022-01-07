
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;
struct mparse {scalar_t__ gzip; } ;
struct buf {size_t sz; scalar_t__ buf; } ;
typedef int ssize_t ;
typedef int * gzFile ;


 int MANDOCERR_DUP ;
 int MANDOCERR_FSTAT ;
 int MANDOCERR_GZCLOSE ;
 int MANDOCERR_GZDOPEN ;
 int MANDOCERR_READ ;
 int MANDOCERR_TOOLARGE ;
 scalar_t__ MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 scalar_t__ S_ISREG (int ) ;
 int Z_ERRNO ;
 int Z_OK ;
 int close (int) ;
 int dup (int) ;
 int errno ;
 int free (int *) ;
 int fstat (int,struct stat*) ;
 int gzclose (int *) ;
 int * gzdopen (int,char*) ;
 int gzerror (int *,int*) ;
 int gzread (int *,int *,size_t) ;
 int mandoc_msg (int ,int ,int ,char*,...) ;
 scalar_t__ mmap (int *,size_t,int ,int ,int,int ) ;
 int read (int,int *,size_t) ;
 int resize_buf (struct buf*,int) ;
 int strerror (int ) ;
 int zError (int) ;

__attribute__((used)) static int
read_whole_file(struct mparse *curp, int fd, struct buf *fb, int *with_mmap)
{
 struct stat st;
 gzFile gz;
 size_t off;
 ssize_t ssz;
 int gzerrnum, retval;

 if (fstat(fd, &st) == -1) {
  mandoc_msg(MANDOCERR_FSTAT, 0, 0, "%s", strerror(errno));
  return -1;
 }
 if (curp->gzip == 0 && S_ISREG(st.st_mode)) {
  if (st.st_size > 0x7fffffff) {
   mandoc_msg(MANDOCERR_TOOLARGE, 0, 0, ((void*)0));
   return -1;
  }
  *with_mmap = 1;
  fb->sz = (size_t)st.st_size;
  fb->buf = mmap(((void*)0), fb->sz, PROT_READ, MAP_SHARED, fd, 0);
  if (fb->buf != MAP_FAILED)
   return 0;
 }

 if (curp->gzip) {







  if ((fd = dup(fd)) == -1) {
   mandoc_msg(MANDOCERR_DUP, 0, 0,
       "%s", strerror(errno));
   return -1;
  }
  if ((gz = gzdopen(fd, "rb")) == ((void*)0)) {
   mandoc_msg(MANDOCERR_GZDOPEN, 0, 0,
       "%s", strerror(errno));
   close(fd);
   return -1;
  }
 } else
  gz = ((void*)0);






 *with_mmap = 0;
 off = 0;
 retval = -1;
 fb->sz = 0;
 fb->buf = ((void*)0);
 for (;;) {
  if (off == fb->sz) {
   if (fb->sz == (1U << 31)) {
    mandoc_msg(MANDOCERR_TOOLARGE, 0, 0, ((void*)0));
    break;
   }
   resize_buf(fb, 65536);
  }
  ssz = curp->gzip ?
      gzread(gz, fb->buf + (int)off, fb->sz - off) :
      read(fd, fb->buf + (int)off, fb->sz - off);
  if (ssz == 0) {
   fb->sz = off;
   retval = 0;
   break;
  }
  if (ssz == -1) {
   if (curp->gzip)
    (void)gzerror(gz, &gzerrnum);
   mandoc_msg(MANDOCERR_READ, 0, 0, "%s",
       curp->gzip && gzerrnum != Z_ERRNO ?
       zError(gzerrnum) : strerror(errno));
   break;
  }
  off += (size_t)ssz;
 }

 if (curp->gzip && (gzerrnum = gzclose(gz)) != Z_OK)
  mandoc_msg(MANDOCERR_GZCLOSE, 0, 0, "%s",
      gzerrnum == Z_ERRNO ? strerror(errno) :
      zError(gzerrnum));
 if (retval == -1) {
  free(fb->buf);
  fb->buf = ((void*)0);
 }
 return retval;
}
