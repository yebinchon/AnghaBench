
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILEIO_EINTR ;
 int FILEIO_ENOSYS ;

 int RETURN_MASK_ALL ;

 int catch_exceptions (int ,int ,void*,int *,int ) ;
 int do_remote_fileio_request ;
 int remote_fileio_reply (int,int ) ;
 int remote_fileio_sig_exit () ;
 int remote_fileio_sig_init () ;
 scalar_t__ remote_fio_ctrl_c_flag ;
 scalar_t__ remote_fio_no_longjmp ;
 int uiout ;

void
remote_fileio_request (char *buf)
{
  int ex;

  remote_fileio_sig_init ();

  remote_fio_ctrl_c_flag = 0;
  remote_fio_no_longjmp = 0;

  ex = catch_exceptions (uiout, do_remote_fileio_request, (void *)buf,
    ((void*)0), RETURN_MASK_ALL);
  switch (ex)
    {
      case 129:
 remote_fileio_reply (-1, FILEIO_ENOSYS);
        break;
      case 128:
        remote_fileio_reply (-1, FILEIO_EINTR);
 break;
      default:
        break;
    }

  remote_fileio_sig_exit ();
}
