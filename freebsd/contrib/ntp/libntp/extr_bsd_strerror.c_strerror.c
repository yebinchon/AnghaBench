
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ebuf ;


 int snprintf (char*,int,char*,int) ;

char *
strerror(
 int errnum
 )
{
 extern int sys_nerr;
 extern char *sys_errlist[];
 static char ebuf[20];

 if ((unsigned int)errnum < sys_nerr)
  return sys_errlist[errnum];
 snprintf(ebuf, sizeof(ebuf), "Unknown error: %d", errnum);

 return ebuf;
}
