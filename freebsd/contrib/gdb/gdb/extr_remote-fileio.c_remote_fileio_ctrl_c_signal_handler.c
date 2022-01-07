
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RETURN_QUIT ;
 void SIG_IGN (int) ;
 int remote_fileio_sig_set (void (*) (int)) ;
 int remote_fio_ctrl_c_flag ;
 int remote_fio_no_longjmp ;
 int throw_exception (int ) ;

__attribute__((used)) static void
remote_fileio_ctrl_c_signal_handler (int signo)
{
  remote_fileio_sig_set (SIG_IGN);
  remote_fio_ctrl_c_flag = 1;
  if (!remote_fio_no_longjmp)
    throw_exception (RETURN_QUIT);
  remote_fileio_sig_set (remote_fileio_ctrl_c_signal_handler);
}
