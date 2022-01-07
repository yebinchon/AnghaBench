
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct snprintf_arg {char* buf; char* str; size_t buf_total; size_t remain; int fd; int method; } ;


 int PRINT_METHOD_SNPRINTF ;
 int kvprintf (char const*,struct snprintf_arg*,int,int ) ;

int
rtld_vsnprintf(char *buf, size_t bufsize, const char *fmt, va_list ap)
{
 struct snprintf_arg info;
 int retval;

 info.method = PRINT_METHOD_SNPRINTF;
 info.buf = info.str = buf;
 info.buf_total = info.remain = bufsize;
 info.fd = -1;
 retval = kvprintf(fmt, &info, 10, ap);
 if (info.remain >= 1)
  *info.str++ = '\0';
 return (retval);
}
