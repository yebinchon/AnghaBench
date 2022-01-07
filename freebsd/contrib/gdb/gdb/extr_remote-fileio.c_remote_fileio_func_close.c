
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIO_FD_CONSOLE_IN ;
 int FIO_FD_CONSOLE_OUT ;
 int FIO_FD_INVALID ;
 scalar_t__ close (int) ;
 int remote_fileio_badfd () ;
 int remote_fileio_close_target_fd (int) ;
 scalar_t__ remote_fileio_extract_int (char**,long*) ;
 int remote_fileio_ioerror () ;
 int remote_fileio_map_fd (int) ;
 int remote_fileio_return_errno (int) ;
 int remote_fileio_return_success (int ) ;
 int remote_fio_no_longjmp ;

__attribute__((used)) static void
remote_fileio_func_close (char *buf)
{
  long num;
  int fd;


  if (remote_fileio_extract_int (&buf, &num))
    {
      remote_fileio_ioerror ();
      return;
    }
  fd = remote_fileio_map_fd ((int) num);
  if (fd == FIO_FD_INVALID)
    {
      remote_fileio_badfd ();
      return;
    }

  remote_fio_no_longjmp = 1;
  if (fd != FIO_FD_CONSOLE_IN && fd != FIO_FD_CONSOLE_OUT && close (fd))
    remote_fileio_return_errno (-1);
  remote_fileio_close_target_fd ((int) num);
  remote_fileio_return_success (0);
}
