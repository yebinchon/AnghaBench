
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volatile int64_t ;



__attribute__((used)) static inline int64_t cvmx_atomic_get64(int64_t *ptr)
{
    return *(volatile int64_t *)ptr;
}
