
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int off_t ;
typedef int mbstate_t ;
typedef int fpos_t ;
struct TYPE_21__ {scalar_t__ _size; } ;
struct TYPE_20__ {scalar_t__ _size; } ;
struct TYPE_19__ {scalar_t__ _size; int * _base; } ;
struct TYPE_22__ {int _flags; int _file; int _flags2; int (* _close ) (TYPE_4__*) ;int _seek; int _write; int _read; struct TYPE_22__* _cookie; int _mbstate; scalar_t__ _orientation; TYPE_3__ _lb; TYPE_2__ _ub; scalar_t__ _lbfsize; TYPE_1__ _bf; int * _p; scalar_t__ _r; scalar_t__ _w; } ;
typedef TYPE_4__ FILE ;


 int DEFFILEMODE ;
 int EBADF ;
 int EINVAL ;
 int EMFILE ;
 int ENFILE ;
 int FD_CLOEXEC ;
 int FLOCKFILE_CANCELSAFE (TYPE_4__*) ;
 int FREELB (TYPE_4__*) ;
 int FREEUB (TYPE_4__*) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int F_DUP2FD_CLOEXEC ;
 int F_GETFL ;
 int F_SETFD ;
 int F_SETFL ;
 scalar_t__ HASLB (TYPE_4__*) ;
 scalar_t__ HASUB (TYPE_4__*) ;
 int O_ACCMODE ;
 int O_APPEND ;
 int O_CLOEXEC ;
 int O_EXEC ;
 int O_RDWR ;
 int O_TRUNC ;
 int SEEK_END ;
 int SEEK_SET ;
 int SHRT_MAX ;
 int STDERR_FILENO ;
 int __S2OAP ;
 int __SEOF ;
 int __SMBF ;
 int __SWR ;
 int __sclose (TYPE_4__*) ;
 int __sdidinit ;
 int __sflags (char const*,int*) ;
 int __sflush (TYPE_4__*) ;
 int __sinit () ;
 int __sread ;
 int __sseek ;
 int __swrite ;
 int _close (int) ;
 scalar_t__ _dup2 (int,int) ;
 scalar_t__ _fcntl (int,int ,...) ;
 int _open (char const*,int,int ) ;
 int _sseek (TYPE_4__*,int ,int ) ;
 int errno ;
 int fclose (TYPE_4__*) ;
 int free (char*) ;
 int ftruncate (int,int ) ;
 int memset (int *,int ,int) ;
 int stub1 (TYPE_4__*) ;
 int stub2 (TYPE_4__*) ;
 int stub3 (TYPE_4__*) ;

FILE *
freopen(const char * __restrict file, const char * __restrict mode,
    FILE * __restrict fp)
{
 int f;
 int dflags, flags, isopen, oflags, sverrno, wantfd;

 if ((flags = __sflags(mode, &oflags)) == 0) {
  sverrno = errno;
  (void) fclose(fp);
  errno = sverrno;
  return (((void*)0));
 }

 FLOCKFILE_CANCELSAFE(fp);

 if (!__sdidinit)
  __sinit();






 if (file == ((void*)0)) {

  if (fp->_flags == 0) {
   errno = EINVAL;
   fp = ((void*)0);
   goto end;
  }
  if ((dflags = _fcntl(fp->_file, F_GETFL)) < 0) {
   sverrno = errno;
   fclose(fp);
   errno = sverrno;
   fp = ((void*)0);
   goto end;
  }

  if ((dflags & O_ACCMODE) != O_RDWR &&
      (dflags & (O_ACCMODE | O_EXEC)) != (oflags & O_ACCMODE)) {
   fclose(fp);
   errno = EBADF;
   fp = ((void*)0);
   goto end;
  }
  if (fp->_flags & __SWR)
   (void) __sflush(fp);
  if ((oflags ^ dflags) & O_APPEND) {
   dflags &= ~O_APPEND;
   dflags |= oflags & O_APPEND;
   if (_fcntl(fp->_file, F_SETFL, dflags) < 0) {
    sverrno = errno;
    fclose(fp);
    errno = sverrno;
    fp = ((void*)0);
    goto end;
   }
  }
  if (oflags & O_TRUNC)
   (void) ftruncate(fp->_file, (off_t)0);
  if (!(oflags & O_APPEND))
   (void) _sseek(fp, (fpos_t)0, SEEK_SET);
  if (oflags & O_CLOEXEC)
   (void) _fcntl(fp->_file, F_SETFD, FD_CLOEXEC);
  f = fp->_file;
  isopen = 0;
  wantfd = -1;
  goto finish;
 }
 if (fp->_flags == 0) {
  fp->_flags = __SEOF;
  isopen = 0;
  wantfd = -1;
 } else {

  if (fp->_flags & __SWR)
   (void) __sflush(fp);

  isopen = fp->_close != ((void*)0);
  if ((wantfd = fp->_file) < 0 && isopen) {
   (void) (*fp->_close)(fp->_cookie);
   isopen = 0;
  }
 }


 f = _open(file, oflags, DEFFILEMODE);

 if (f < 0 && isopen && wantfd > STDERR_FILENO &&
     (errno == ENFILE || errno == EMFILE)) {
  (void) (*fp->_close)(fp->_cookie);
  isopen = 0;
  wantfd = -1;
  f = _open(file, oflags, DEFFILEMODE);
 }
 sverrno = errno;

finish:
 if (fp->_flags & __SMBF)
  free((char *)fp->_bf._base);
 fp->_w = 0;
 fp->_r = 0;
 fp->_p = ((void*)0);
 fp->_bf._base = ((void*)0);
 fp->_bf._size = 0;
 fp->_lbfsize = 0;
 if (HASUB(fp))
  FREEUB(fp);
 fp->_ub._size = 0;
 if (HASLB(fp))
  FREELB(fp);
 fp->_lb._size = 0;
 fp->_orientation = 0;
 memset(&fp->_mbstate, 0, sizeof(mbstate_t));
 fp->_flags2 = 0;

 if (f < 0) {
  if (isopen)
   (void) (*fp->_close)(fp->_cookie);
  fp->_flags = 0;
  errno = sverrno;
  fp = ((void*)0);
  goto end;
 }






 if (wantfd >= 0) {
  if ((oflags & O_CLOEXEC ? _fcntl(f, F_DUP2FD_CLOEXEC, wantfd) :
      _dup2(f, wantfd)) >= 0) {
   (void)_close(f);
   f = wantfd;
  } else
   (void)_close(fp->_file);
 }
 if (f > SHRT_MAX) {
  fp->_flags = 0;
  errno = EMFILE;
  fp = ((void*)0);
  goto end;
 }

 fp->_flags = flags;
 fp->_file = f;
 fp->_cookie = fp;
 fp->_read = __sread;
 fp->_write = __swrite;
 fp->_seek = __sseek;
 fp->_close = __sclose;
 if (oflags & O_APPEND) {
  fp->_flags2 |= __S2OAP;
  (void) _sseek(fp, (fpos_t)0, SEEK_END);
 }
end:
 FUNLOCKFILE_CANCELSAFE();
 return (fp);
}
