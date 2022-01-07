
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backtrace_symbols_fd_fmt (void* const*,size_t,int,int ) ;
 int fmt ;

int
backtrace_symbols_fd(void *const *trace, size_t len, int fd)
{
 return backtrace_symbols_fd_fmt(trace, len, fd, fmt);
}
