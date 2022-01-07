
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONGEST ;
typedef scalar_t__ CORE_ADDR ;


 int EACCES ;
 int EBADF ;


 int FIO_FD_INVALID ;
 int errno ;
 int gdb_flush (int ) ;
 int gdb_stdtarg ;
 int gdb_stdtargerr ;
 int remote_fileio_badfd () ;
 scalar_t__ remote_fileio_extract_int (char**,long*) ;
 scalar_t__ remote_fileio_extract_long (char**,scalar_t__*) ;
 int remote_fileio_ioerror () ;
 int remote_fileio_map_fd (int) ;
 int remote_fileio_return_errno (int) ;
 int remote_fileio_return_success (int) ;
 int remote_fio_no_longjmp ;
 int remote_read_bytes (scalar_t__,char*,size_t) ;
 int ui_file_write (int ,char*,size_t) ;
 int write (int,char*,size_t) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (size_t) ;

__attribute__((used)) static void
remote_fileio_func_write (char *buf)
{
  long target_fd, num;
  LONGEST lnum;
  CORE_ADDR ptrval;
  int fd, ret, retlength;
  char *buffer;
  size_t length;


  if (remote_fileio_extract_int (&buf, &target_fd))
    {
      remote_fileio_ioerror ();
      return;
    }
  fd = remote_fileio_map_fd ((int) target_fd);
  if (fd == FIO_FD_INVALID)
    {
      remote_fileio_badfd ();
      return;
    }

  if (remote_fileio_extract_long (&buf, &lnum))
    {
      remote_fileio_ioerror ();
      return;
    }
  ptrval = (CORE_ADDR) lnum;

  if (remote_fileio_extract_int (&buf, &num))
    {
      remote_fileio_ioerror ();
      return;
    }
  length = (size_t) num;

  buffer = (char *) xmalloc (length);
  retlength = remote_read_bytes (ptrval, buffer, length);
  if (retlength != length)
    {
      xfree (buffer);
      remote_fileio_ioerror ();
      return;
    }

  remote_fio_no_longjmp = 1;
  switch (fd)
    {
      case 129:
 remote_fileio_badfd ();
 return;
      case 128:
 ui_file_write (target_fd == 1 ? gdb_stdtarg : gdb_stdtargerr, buffer,
         length);
 gdb_flush (target_fd == 1 ? gdb_stdtarg : gdb_stdtargerr);
 ret = length;
 break;
      default:
 ret = write (fd, buffer, length);
 if (ret < 0 && errno == EACCES)
   errno = EBADF;
 break;
    }

  if (ret < 0)
    remote_fileio_return_errno (-1);
  else
    remote_fileio_return_success (ret);

  xfree (buffer);
}
