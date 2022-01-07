
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abrtflag ;
 int alarmtimer (int ) ;
 int errno ;
 int sigint_raised ;

void
psabort(int notused)
{
 int oerrno = errno;

 sigint_raised = 1;
 alarmtimer(0);
 abrtflag++;
 errno = oerrno;
}
