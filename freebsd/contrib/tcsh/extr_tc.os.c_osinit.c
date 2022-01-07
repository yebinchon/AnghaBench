
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigstack {scalar_t__ ss_onstack; scalar_t__ ss_sp; } ;


 int COMPAT_EXEC ;
 int SIGIO ;
 int SIG_IGN ;
 int getcompat () ;
 int getpid () ;
 int isapad () ;
 int set42sig () ;
 int setcompat (int) ;
 int signal (int ,int ) ;
 int sigstack (struct sigstack*,int *) ;
 int syscall (int,int ,int ) ;
 scalar_t__ xmalloc (int) ;

void
osinit(void)
{
}
