
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alarmtimer (int ) ;
 int errno ;
 int fileno (int ) ;
 scalar_t__ fromatty ;
 int ptabort ;
 scalar_t__ ptflag ;
 int siglongjmp (int ,int) ;
 int timeoutflag ;
 int ttyout ;
 int write (int ,char*,int) ;

void
cmdtimeout(int notused)
{
 int oerrno = errno;

 alarmtimer(0);
 if (fromatty)
  write(fileno(ttyout), "\n", 1);
 timeoutflag++;
 if (ptflag)
  siglongjmp(ptabort, 1);
 errno = oerrno;
}
