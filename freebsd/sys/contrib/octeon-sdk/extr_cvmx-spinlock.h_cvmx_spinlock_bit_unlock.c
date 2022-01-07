
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint32_t ;


 int CVMX_SYNCWS ;

__attribute__((used)) static inline void cvmx_spinlock_bit_unlock(uint32_t *word)
{
    CVMX_SYNCWS;
    *word &= ~(1UL << 31) ;
    CVMX_SYNCWS;
}
