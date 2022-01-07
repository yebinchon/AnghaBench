
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int kvprintf (char const*,int ,int *,int,int ) ;
 int putchar_wrapper ;

int
vprintf(const char *fmt, va_list ap)
{

 return (kvprintf(fmt, putchar_wrapper, ((void*)0), 10, ap));
}
