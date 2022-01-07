
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int __printf (char const*,int ,int ,int ) ;
 int putchar ;

__attribute__((used)) static int
vprintf(const char *fmt, va_list ap)
{
 int ret;

 ret = __printf(fmt, putchar, 0, ap);
 return (ret);
}
