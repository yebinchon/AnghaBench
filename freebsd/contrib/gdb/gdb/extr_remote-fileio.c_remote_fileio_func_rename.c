
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int CORE_ADDR ;


 scalar_t__ EACCES ;
 scalar_t__ EEXIST ;
 scalar_t__ EINVAL ;
 scalar_t__ EISDIR ;
 scalar_t__ ENOTEMPTY ;
 int FILEIO_EACCES ;
 int PATH_MAX ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 char* alloca (int) ;
 int cygwin_conv_to_full_posix_path (char*,char*) ;
 scalar_t__ errno ;
 scalar_t__ remote_fileio_extract_ptr_w_len (char**,int *,int*) ;
 int remote_fileio_ioerror () ;
 int remote_fileio_reply (int,int ) ;
 int remote_fileio_return_errno (int) ;
 int remote_fileio_return_success (int) ;
 int remote_fio_no_longjmp ;
 int remote_read_bytes (int ,char*,int) ;
 int rename (char*,char*) ;
 int stat (char*,struct stat*) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void
remote_fileio_func_rename (char *buf)
{
  CORE_ADDR ptrval;
  int length, retlength;
  char *oldpath, *newpath;
  int ret, of, nf;
  struct stat ost, nst;


  if (remote_fileio_extract_ptr_w_len (&buf, &ptrval, &length))
    {
      remote_fileio_ioerror ();
      return;
    }

  oldpath = alloca (length);
  retlength = remote_read_bytes (ptrval, oldpath, length);
  if (retlength != length)
    {
      remote_fileio_ioerror ();
      return;
    }

  if (remote_fileio_extract_ptr_w_len (&buf, &ptrval, &length))
    {
      remote_fileio_ioerror ();
      return;
    }

  newpath = alloca (length);
  retlength = remote_read_bytes (ptrval, newpath, length);
  if (retlength != length)
    {
      remote_fileio_ioerror ();
      return;
    }


  of = stat (oldpath, &ost);
  nf = stat (newpath, &nst);
  if ((!of && !S_ISREG (ost.st_mode) && !S_ISDIR (ost.st_mode))
      || (!nf && !S_ISREG (nst.st_mode) && !S_ISDIR (nst.st_mode)))
    {
      remote_fileio_reply (-1, FILEIO_EACCES);
      return;
    }

  remote_fio_no_longjmp = 1;
  ret = rename (oldpath, newpath);

  if (ret == -1)
    {



      if (errno == ENOTEMPTY)
        errno = EEXIST;
      remote_fileio_return_errno (-1);
    }
  else
    remote_fileio_return_success (ret);
}
