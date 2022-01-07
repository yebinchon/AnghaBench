
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msgbuf ;


 int alarmtimer (int ) ;
 int fileno (int ) ;
 int lostpeer (int ) ;
 int sigint_raised ;
 int siglongjmp (int ,int) ;
 size_t strlcpy (char*,char*,int) ;
 int ttyout ;
 int write (int ,char*,size_t) ;
 int xferabort ;

void
abort_squared(int dummy)
{
 char msgbuf[100];
 size_t len;

 sigint_raised = 1;
 alarmtimer(0);
 len = strlcpy(msgbuf, "\nremote abort aborted; closing connection.\n",
     sizeof(msgbuf));
 write(fileno(ttyout), msgbuf, len);
 lostpeer(0);
 siglongjmp(xferabort, 1);
}
