
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; } ;
typedef int sa ;


 int NX509_SIG ;
 size_t SIGABRT ;
 size_t SIGFPE ;
 size_t SIGILL ;
 size_t SIGINT ;
 int SIGKILL ;
 size_t SIGSEGV ;
 size_t SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int SIGWINCH ;
 int SIG_DFL ;
 int memset (struct sigaction*,int ,int) ;
 int recsig ;
 int * savsig ;
 int sigaction (int,struct sigaction*,int *) ;
 int signal (int,int ) ;

__attribute__((used)) static void pushsig(void)
{

    int i;
    for (i = 1; i < NX509_SIG; i++) {
        savsig[i] = signal(i, recsig);

    }





}
