
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_handler; int sa_flags; int sa_mask; } ;
typedef int sa ;
typedef scalar_t__ mysig_t ;


 int SA_INTERRUPT ;
 int SIGALRM ;
 int memset (struct sigaction*,int ,int) ;
 int sigaction (int,struct sigaction*,struct sigaction*) ;
 int sigemptyset (int *) ;
 scalar_t__ signal (int,scalar_t__) ;

mysig_t
mysignal(int sig, mysig_t act)
{
 return (signal(sig, act));

}
