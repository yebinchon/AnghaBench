
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** sys_errlist ;
 int sys_nerr ;

const char *
rtld_strerror(int errnum)
{

 if (errnum < 0 || errnum >= sys_nerr)
  return ("Unknown error");
 return (sys_errlist[errnum]);
}
