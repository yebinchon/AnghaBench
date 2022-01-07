
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msgbuf ;


 int alarmtimer (int ) ;
 int fileno (int ) ;
 int httpabort ;
 int sigint_raised ;
 int siglongjmp (int ,int) ;
 size_t strlcpy (char*,char*,int) ;
 int ttyout ;
 int write (int ,char*,size_t) ;

void
aborthttp(int notused)
{
 char msgbuf[100];
 size_t len;

 sigint_raised = 1;
 alarmtimer(0);
 len = strlcpy(msgbuf, "\nHTTP fetch aborted.\n", sizeof(msgbuf));
 write(fileno(ttyout), msgbuf, len);
 siglongjmp(httpabort, 1);
}
