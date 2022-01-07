
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int mode_t ;
typedef int CORE_ADDR ;


 int FILEIO_EISDIR ;
 int FILEIO_ENODEV ;
 int O_RDWR ;
 int O_WRONLY ;
 scalar_t__ S_ISDIR (int ) ;
 int S_ISREG (int ) ;
 char* alloca (int) ;
 int open (char*,int,int ) ;
 scalar_t__ remote_fileio_extract_int (char**,long*) ;
 scalar_t__ remote_fileio_extract_ptr_w_len (char**,int *,int*) ;
 int remote_fileio_fd_to_targetfd (int) ;
 int remote_fileio_ioerror () ;
 int remote_fileio_mode_to_host (long,int) ;
 int remote_fileio_oflags_to_host (long) ;
 int remote_fileio_reply (int,int ) ;
 int remote_fileio_return_errno (int) ;
 int remote_fileio_return_success (int) ;
 int remote_fio_no_longjmp ;
 int remote_read_bytes (int ,char*,int) ;
 int stat (char*,struct stat*) ;

__attribute__((used)) static void
remote_fileio_func_open (char *buf)
{
  CORE_ADDR ptrval;
  int length, retlength;
  long num;
  int flags, fd;
  mode_t mode;
  char *pathname;
  struct stat st;


  if (remote_fileio_extract_ptr_w_len (&buf, &ptrval, &length))
    {
      remote_fileio_ioerror ();
      return;
    }

  if (remote_fileio_extract_int (&buf, &num))
    {
      remote_fileio_ioerror ();
      return;
    }
  flags = remote_fileio_oflags_to_host (num);

  if (remote_fileio_extract_int (&buf, &num))
    {
      remote_fileio_ioerror ();
      return;
    }
  mode = remote_fileio_mode_to_host (num, 1);


  pathname = alloca (length);
  retlength = remote_read_bytes (ptrval, pathname, length);
  if (retlength != length)
    {
      remote_fileio_ioerror ();
      return;
    }




  if (!stat (pathname, &st))
    {
      if (!S_ISREG (st.st_mode) && !S_ISDIR (st.st_mode))
 {
   remote_fileio_reply (-1, FILEIO_ENODEV);
   return;
 }
      if (S_ISDIR (st.st_mode)
   && ((flags & O_WRONLY) == O_WRONLY || (flags & O_RDWR) == O_RDWR))
 {
   remote_fileio_reply (-1, FILEIO_EISDIR);
   return;
 }
    }

  remote_fio_no_longjmp = 1;
  fd = open (pathname, flags, mode);
  if (fd < 0)
    {
      remote_fileio_return_errno (-1);
      return;
    }

  fd = remote_fileio_fd_to_targetfd (fd);
  remote_fileio_return_success (fd);
}
