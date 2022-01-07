
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct print_buf {char* buf; size_t size; } ;


 int kvprintf (char const*,int *,struct print_buf*,int,int ) ;
 int snprint_func ;

int
vsnprintf(char *buf, size_t size, const char *cfmt, va_list ap)
{
 struct print_buf arg;
 int retval;

 arg.buf = buf;
 arg.size = size;

 retval = kvprintf(cfmt, &snprint_func, &arg, 10, ap);

 if (arg.size >= 1)
  *(arg.buf)++ = 0;

 return (retval);
}
