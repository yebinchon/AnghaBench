
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int efunc (int,char*) ;
 int stub1 (int,char*) ;
 int vasprintf (char**,char const*,int ) ;

int
evasprintf(char ** __restrict ret, const char * __restrict format, va_list ap)
{
 int rv;
 if ((rv = vasprintf(ret, format, ap)) == -1)
  (*efunc)(1, "Cannot format string");
 return rv;
}
