
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int CORE_ADDR ;


 int FILEIO_ENODEV ;
 int S_ISDIR (int ) ;
 int S_ISREG (int ) ;
 char* alloca (int) ;
 scalar_t__ remote_fileio_extract_ptr_w_len (char**,int *,int*) ;
 int remote_fileio_ioerror () ;
 int remote_fileio_reply (int,int ) ;
 int remote_fileio_return_errno (int) ;
 int remote_fileio_return_success (int) ;
 int remote_fio_no_longjmp ;
 int remote_read_bytes (int ,char*,int) ;
 int stat (char*,struct stat*) ;
 int unlink (char*) ;

__attribute__((used)) static void
remote_fileio_func_unlink (char *buf)
{
  CORE_ADDR ptrval;
  int length, retlength;
  char *pathname;
  int ret;
  struct stat st;


  if (remote_fileio_extract_ptr_w_len (&buf, &ptrval, &length))
    {
      remote_fileio_ioerror ();
      return;
    }

  pathname = alloca (length);
  retlength = remote_read_bytes (ptrval, pathname, length);
  if (retlength != length)
    {
      remote_fileio_ioerror ();
      return;
    }



  if (!stat (pathname, &st) && !S_ISREG (st.st_mode) && !S_ISDIR (st.st_mode))
    {
      remote_fileio_reply (-1, FILEIO_ENODEV);
      return;
    }

  remote_fio_no_longjmp = 1;
  ret = unlink (pathname);

  if (ret == -1)
    remote_fileio_return_errno (-1);
  else
    remote_fileio_return_success (ret);
}
