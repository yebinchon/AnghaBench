
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
typedef int b ;


 int UC (char) ;
 int snprintf (char*,int,char*,int,int,int,int) ;

char *
inet_ntoa(struct in_addr in)
{
 static char b[18];
 char *p;

 p = (char *)&in;

 (void)snprintf(b, sizeof(b),
     "%u.%u.%u.%u", (((int)p[0])&0xff), (((int)p[1])&0xff), (((int)p[2])&0xff), (((int)p[3])&0xff));
 return (b);
}
