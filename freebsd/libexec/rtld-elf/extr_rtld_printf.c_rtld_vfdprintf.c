
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct snprintf_arg {char* buf; char* str; int buf_total; int remain; int fd; int method; } ;
typedef int buf ;


 int PRINT_METHOD_WRITE ;
 int kvprintf (char const*,struct snprintf_arg*,int,int ) ;
 int printf_out (struct snprintf_arg*) ;

int
rtld_vfdprintf(int fd, const char *fmt, va_list ap)
{
 char buf[512];
 struct snprintf_arg info;
 int retval;

 info.method = PRINT_METHOD_WRITE;
 info.buf = info.str = buf;
 info.buf_total = info.remain = sizeof(buf);
 info.fd = fd;
 retval = kvprintf(fmt, &info, 10, ap);
 printf_out(&info);
 return (retval);
}
