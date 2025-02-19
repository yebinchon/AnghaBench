
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct fio_timeval {int dummy; } ;
typedef scalar_t__ LONGEST ;
typedef scalar_t__ CORE_ADDR ;


 int FILEIO_EINVAL ;
 int gettimeofday (struct timeval*,int *) ;
 scalar_t__ remote_fileio_extract_long (char**,scalar_t__*) ;
 int remote_fileio_ioerror () ;
 int remote_fileio_reply (int,int ) ;
 int remote_fileio_return_errno (int) ;
 int remote_fileio_return_success (int) ;
 int remote_fileio_to_fio_timeval (struct timeval*,struct fio_timeval*) ;
 int remote_fileio_write_bytes (scalar_t__,char*,int) ;
 int remote_fio_no_longjmp ;

__attribute__((used)) static void
remote_fileio_func_gettimeofday (char *buf)
{
  LONGEST lnum;
  CORE_ADDR ptrval;
  int ret, retlength;
  struct timeval tv;
  struct fio_timeval ftv;


  if (remote_fileio_extract_long (&buf, &lnum))
    {
      remote_fileio_ioerror ();
      return;
    }
  ptrval = (CORE_ADDR) lnum;

  if (remote_fileio_extract_long (&buf, &lnum))
    {
      remote_fileio_ioerror ();
      return;
    }

  if (lnum)
    {
      remote_fileio_reply (-1, FILEIO_EINVAL);
      return;
    }

  remote_fio_no_longjmp = 1;
  ret = gettimeofday (&tv, ((void*)0));

  if (ret == -1)
    {
      remote_fileio_return_errno (-1);
      return;
    }

  if (ptrval)
    {
      remote_fileio_to_fio_timeval (&tv, &ftv);

      retlength = remote_fileio_write_bytes (ptrval, (char *) &ftv, sizeof ftv);
      if (retlength != sizeof ftv)
 {
   remote_fileio_return_errno (-1);
   return;
 }
    }
  remote_fileio_return_success (ret);
}
