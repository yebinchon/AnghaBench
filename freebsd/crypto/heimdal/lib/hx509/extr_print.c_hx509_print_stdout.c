
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int FILE ;


 int * stdout ;
 int vfprintf (int *,char const*,int ) ;

void
hx509_print_stdout(void *ctx, const char *fmt, va_list va)
{
    FILE *f = ctx;
    if (f == ((void*)0))
 f = stdout;
    vfprintf(f, fmt, va);
}
