
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volatile int32_t ;



__attribute__((used)) static inline int32_t cvmx_atomic_get32(int32_t *ptr)
{
    return *(volatile int32_t *)ptr;
}
