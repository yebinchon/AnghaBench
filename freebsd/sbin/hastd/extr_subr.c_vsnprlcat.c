
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 size_t strlen (char*) ;
 int vsnprintf (char*,size_t,char const*,int ) ;

int
vsnprlcat(char *str, size_t size, const char *fmt, va_list ap)
{
 size_t len;

 len = strlen(str);
 return (vsnprintf(str + len, size - len, fmt, ap));
}
