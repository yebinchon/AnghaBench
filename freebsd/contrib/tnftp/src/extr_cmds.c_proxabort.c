
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abortprox ;
 int alarmtimer (int ) ;
 scalar_t__ connected ;
 int proxflag ;
 int proxy ;
 int pswitch (int) ;
 int sigint_raised ;
 int siglongjmp (int ,int) ;

void
proxabort(int notused)
{

 sigint_raised = 1;
 alarmtimer(0);
 if (!proxy) {
  pswitch(1);
 }
 if (connected) {
  proxflag = 1;
 }
 else {
  proxflag = 0;
 }
 pswitch(0);
 siglongjmp(abortprox, 1);
}
