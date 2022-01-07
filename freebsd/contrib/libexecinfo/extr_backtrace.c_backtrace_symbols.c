
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** backtrace_symbols_fmt (void* const*,size_t,int ) ;
 int fmt ;

char **
backtrace_symbols(void *const *trace, size_t len)
{
 return backtrace_symbols_fmt(trace, len, fmt);
}
