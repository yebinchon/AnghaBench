
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void (* sa_handler ) (int) ;scalar_t__ sa_flags; int sa_mask; } ;


 int SIGINT ;
 TYPE_1__ remote_fio_sa ;
 int sigaction (int ,TYPE_1__*,int *) ;
 int sigemptyset (int *) ;
 int signal (int ,void (*) (int)) ;

__attribute__((used)) static void
remote_fileio_sig_set (void (*sigint_func)(int))
{






  signal (SIGINT, sigint_func);

}
