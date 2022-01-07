
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct sp_data {char* sp_buf; size_t sp_size; scalar_t__ sp_len; } ;


 int __printf (char const*,int ,struct sp_data*,int ) ;
 int __sputc ;

__attribute__((used)) static int
vsnprintf(char *str, size_t sz, const char *fmt, va_list ap)
{
 struct sp_data sp;
 int ret;

 sp.sp_buf = str;
 sp.sp_len = 0;
 sp.sp_size = sz;
 ret = __printf(fmt, __sputc, &sp, ap);
 return (ret);
}
