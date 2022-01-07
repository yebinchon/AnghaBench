
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ abrtflag ;
 int alarmtimer (int ) ;
 int fileno (int ) ;
 scalar_t__ fromatty ;
 scalar_t__ mflag ;
 int ptabflg ;
 int ptabort ;
 int sigint_raised ;
 int siglongjmp (int ,int) ;
 int ttyout ;
 int write (int ,char*,int) ;

void
abortpt(int notused)
{

 sigint_raised = 1;
 alarmtimer(0);
 if (fromatty)
  write(fileno(ttyout), "\n", 1);
 ptabflg++;
 mflag = 0;
 abrtflag = 0;
 siglongjmp(ptabort, 1);
}
