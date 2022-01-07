
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cvmx_debug_mode_exception_ignore ;
 scalar_t__ __cvmx_debug_mode_exception_occured ;

__attribute__((used)) static int cvmx_debug_probe_load(unsigned char *ptr, unsigned char *result)
{
    volatile unsigned char *p = ptr;
    int ok;
    unsigned char tem;

    {
        __cvmx_debug_mode_exception_ignore = 1;
        __cvmx_debug_mode_exception_occured = 0;

        asm volatile (".set push		\n\t"
                      ".set noreorder	\n\t"
                      "nop			\n\t"
                      "lbu %0, %1		\n\t"
                      "nop			\n\t"
                      ".set pop" : "=r"(tem) : "m"(*p));
        ok = __cvmx_debug_mode_exception_occured == 0;
        __cvmx_debug_mode_exception_ignore = 0;
        __cvmx_debug_mode_exception_occured = 0;
 *result = tem;
    }
    return ok;
}
