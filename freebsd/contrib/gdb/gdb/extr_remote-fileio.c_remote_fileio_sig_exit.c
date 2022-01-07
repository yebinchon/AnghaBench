
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int remote_fio_ofunc ;
 int remote_fio_osa ;
 int sigaction (int ,int *,int *) ;
 int signal (int ,int ) ;

__attribute__((used)) static void
remote_fileio_sig_exit (void)
{



  signal (SIGINT, remote_fio_ofunc);

}
