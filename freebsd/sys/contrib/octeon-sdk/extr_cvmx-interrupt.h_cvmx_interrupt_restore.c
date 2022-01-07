
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline void cvmx_interrupt_restore(uint32_t flags)
{

    if (flags & 1)
    {
        asm volatile (
            "EI     \n"
            ::);
    }
}
