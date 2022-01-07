
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int errno ;
 int verrc (int,int ,char const*,int ) ;

void
verr(int eval, const char *fmt, va_list ap)
{
 verrc(eval, errno, fmt, ap);
}
