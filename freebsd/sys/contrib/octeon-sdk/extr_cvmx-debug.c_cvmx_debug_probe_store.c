
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cvmx_debug_mode_exception_ignore ;
 scalar_t__ __cvmx_debug_mode_exception_occured ;

__attribute__((used)) static int cvmx_debug_probe_store(unsigned char *ptr)
{
    volatile unsigned char *p = ptr;
    int ok;

    __cvmx_debug_mode_exception_ignore = 1;
    __cvmx_debug_mode_exception_occured = 0;

    asm volatile (".set push		\n\t"
                  ".set noreorder	\n\t"
                  "nop			\n\t"
                  "sb $0, %0		\n\t"
                  "nop			\n\t"
                  ".set pop" : "=m"(*p));
    ok = __cvmx_debug_mode_exception_occured == 0;

    __cvmx_debug_mode_exception_ignore = 0;
    __cvmx_debug_mode_exception_occured = 0;
    return ok;
}
