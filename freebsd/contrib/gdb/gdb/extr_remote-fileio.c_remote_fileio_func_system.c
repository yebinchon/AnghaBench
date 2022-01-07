
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int FILEIO_EPERM ;
 int WEXITSTATUS (int) ;
 char* alloca (int) ;
 scalar_t__ remote_fileio_extract_ptr_w_len (char**,int *,int*) ;
 int remote_fileio_ioerror () ;
 int remote_fileio_reply (int,int ) ;
 int remote_fileio_return_errno (int) ;
 int remote_fileio_return_success (int ) ;
 int remote_fio_no_longjmp ;
 int remote_fio_system_call_allowed ;
 int remote_read_bytes (int ,char*,int) ;
 int system (char*) ;

__attribute__((used)) static void
remote_fileio_func_system (char *buf)
{
  CORE_ADDR ptrval;
  int ret, length, retlength;
  char *cmdline;




  if (!remote_fio_system_call_allowed)
    {
      remote_fileio_reply (-1, FILEIO_EPERM);
      return;
    }


  if (remote_fileio_extract_ptr_w_len (&buf, &ptrval, &length))
    {
      remote_fileio_ioerror ();
      return;
    }

  cmdline = alloca (length);
  retlength = remote_read_bytes (ptrval, cmdline, length);
  if (retlength != length)
    {
      remote_fileio_ioerror ();
      return;
    }

  remote_fio_no_longjmp = 1;
  ret = system (cmdline);

  if (ret == -1)
    remote_fileio_return_errno (-1);
  else
    remote_fileio_return_success (WEXITSTATUS (ret));
}
