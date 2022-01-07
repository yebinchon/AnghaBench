
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int kvprintf (char const*,int *,void*,int,int ) ;

int
vsprintf(char *buf, const char *cfmt, va_list ap)
{
 int retval;

 retval = kvprintf(cfmt, ((void*)0), (void *)buf, 10, ap);
 buf[retval] = '\0';

 return (retval);
}
