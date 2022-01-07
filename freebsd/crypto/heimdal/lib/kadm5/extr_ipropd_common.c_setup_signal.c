
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {void* sa_handler; int sa_mask; scalar_t__ sa_flags; } ;


 int SIGINT ;
 int SIGPIPE ;
 int SIGTERM ;
 int SIGXCPU ;
 void* SIG_IGN ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int signal (int ,void*) ;
 void* sigterm ;

void
setup_signal(void)
{
    signal(SIGINT, sigterm);
    signal(SIGTERM, sigterm);

    signal(SIGXCPU, sigterm);


    signal(SIGPIPE, SIG_IGN);


}
