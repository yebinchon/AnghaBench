
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abrtflag ;
 int alarmtimer (int ) ;
 int errno ;
 int fileno (int ) ;
 scalar_t__ fromatty ;
 int ptabort ;
 scalar_t__ ptflag ;
 int sigint_raised ;
 int siglongjmp (int ,int) ;
 int ttyout ;
 int write (int ,char*,int) ;

void
cmdabort(int notused)
{
 int oerrno = errno;

 sigint_raised = 1;
 alarmtimer(0);
 if (fromatty)
  write(fileno(ttyout), "\n", 1);
 abrtflag++;
 if (ptflag)
  siglongjmp(ptabort, 1);
 errno = oerrno;
}
