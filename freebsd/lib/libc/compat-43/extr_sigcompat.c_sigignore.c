
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; } ;
typedef int sa ;


 int SIG_IGN ;
 int __libc_sigaction (int,struct sigaction*,int *) ;
 int bzero (struct sigaction*,int) ;

int
sigignore(int sig)
{
 struct sigaction sa;

 bzero(&sa, sizeof(sa));
 sa.sa_handler = SIG_IGN;
 return (__libc_sigaction(sig, &sa, ((void*)0)));
}
