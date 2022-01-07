
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sys_getpid () ;
 int __sys_kill (int ,int) ;
 int errno ;

void
__utrap_kill_self(int sig)
{
 int berrno;

 berrno = errno;
 __sys_kill(__sys_getpid(), sig);
 errno = berrno;
}
