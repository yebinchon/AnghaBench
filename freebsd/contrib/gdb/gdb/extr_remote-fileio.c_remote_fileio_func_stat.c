
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct fio_stat {int fst_dev; } ;
typedef scalar_t__ LONGEST ;
typedef scalar_t__ CORE_ADDR ;


 int FILEIO_EACCES ;
 int S_ISDIR (int ) ;
 int S_ISREG (int ) ;
 char* alloca (int) ;
 scalar_t__ remote_fileio_extract_long (char**,scalar_t__*) ;
 scalar_t__ remote_fileio_extract_ptr_w_len (char**,scalar_t__*,int*) ;
 int remote_fileio_ioerror () ;
 int remote_fileio_reply (int,int ) ;
 int remote_fileio_return_errno (int) ;
 int remote_fileio_return_success (int) ;
 int remote_fileio_to_fio_stat (struct stat*,struct fio_stat*) ;
 int remote_fileio_to_fio_uint (int ,int ) ;
 int remote_fileio_write_bytes (scalar_t__,char*,int) ;
 int remote_fio_no_longjmp ;
 int remote_read_bytes (scalar_t__,char*,int) ;
 int stat (char*,struct stat*) ;

__attribute__((used)) static void
remote_fileio_func_stat (char *buf)
{
  CORE_ADDR ptrval;
  int ret, length, retlength;
  char *pathname;
  LONGEST lnum;
  struct stat st;
  struct fio_stat fst;


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


  if (remote_fileio_extract_long (&buf, &lnum))
    {
      remote_fileio_ioerror ();
      return;
    }
  ptrval = (CORE_ADDR) lnum;

  remote_fio_no_longjmp = 1;
  ret = stat (pathname, &st);

  if (ret == -1)
    {
      remote_fileio_return_errno (-1);
      return;
    }

  if (!ret && !S_ISREG (st.st_mode) && !S_ISDIR (st.st_mode))
    {
      remote_fileio_reply (-1, FILEIO_EACCES);
      return;
    }
  if (ptrval)
    {
      remote_fileio_to_fio_stat (&st, &fst);
      remote_fileio_to_fio_uint (0, fst.fst_dev);

      retlength = remote_fileio_write_bytes (ptrval, (char *) &fst, sizeof fst);
      if (retlength != sizeof fst)
 {
   remote_fileio_return_errno (-1);
   return;
 }
    }
  remote_fileio_return_success (ret);
}
