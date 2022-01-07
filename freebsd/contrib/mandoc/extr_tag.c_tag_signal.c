
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; int sa_mask; } ;
typedef int sa ;


 int SIG_DFL ;
 int _exit (int) ;
 int getpid () ;
 int kill (int ,int) ;
 int memset (struct sigaction*,int ,int) ;
 int sigaction (int,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int tag_unlink () ;

__attribute__((used)) static void
tag_signal(int signum)
{
 struct sigaction sa;

 tag_unlink();
 memset(&sa, 0, sizeof(sa));
 sigemptyset(&sa.sa_mask);
 sa.sa_handler = SIG_DFL;
 sigaction(signum, &sa, ((void*)0));
 kill(getpid(), signum);

 _exit(1);
}
