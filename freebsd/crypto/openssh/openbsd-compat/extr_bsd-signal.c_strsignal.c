
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int snprintf (char*,int,char*,int) ;

char *strsignal(int sig)
{
 static char buf[16];

 (void)snprintf(buf, sizeof(buf), "%d", sig);
 return buf;
}
