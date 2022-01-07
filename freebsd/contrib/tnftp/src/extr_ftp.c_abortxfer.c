
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msgbuf ;


 scalar_t__ abrtflag ;
 int alarmtimer (int ) ;
 int* direction ;
 int errx (int,char*,int*) ;
 int fileno (int ) ;
 scalar_t__ mflag ;
 int sigint_raised ;
 int siglongjmp (int ,int) ;
 size_t strlcat (char*,char*,int) ;
 int strlcpy (char*,char*,int) ;
 int ttyout ;
 int write (int ,char*,size_t) ;
 int xferabort ;

void
abortxfer(int notused)
{
 char msgbuf[100];
 size_t len;

 sigint_raised = 1;
 alarmtimer(0);
 mflag = 0;
 abrtflag = 0;
 switch (direction[0]) {
 case 'r':
  strlcpy(msgbuf, "\nreceive", sizeof(msgbuf));
  break;
 case 's':
  strlcpy(msgbuf, "\nsend", sizeof(msgbuf));
  break;
 default:
  errx(1, "abortxfer: unknown direction `%s'", direction);
 }
 len = strlcat(msgbuf, " aborted. Waiting for remote to finish abort.\n",
     sizeof(msgbuf));
 write(fileno(ttyout), msgbuf, len);
 siglongjmp(xferabort, 1);
}
