
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int CVMX_SYNCWS ;

__attribute__((used)) static inline void cvmx_atomic_set32(int32_t *ptr, int32_t value)
{
    CVMX_SYNCWS;
    *ptr = value;
    CVMX_SYNCWS;
}
