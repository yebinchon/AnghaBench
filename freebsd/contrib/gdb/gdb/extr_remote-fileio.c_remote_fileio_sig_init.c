
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sa_flags; int sa_mask; int sa_handler; } ;


 int SIGINT ;
 int SIG_IGN ;
 int remote_fio_ofunc ;
 int remote_fio_osa ;
 TYPE_1__ remote_fio_sa ;
 int sigaction (int ,TYPE_1__*,int *) ;
 int sigemptyset (int *) ;
 int signal (int ,int ) ;

__attribute__((used)) static void
remote_fileio_sig_init (void)
{






  remote_fio_ofunc = signal (SIGINT, SIG_IGN);

}
