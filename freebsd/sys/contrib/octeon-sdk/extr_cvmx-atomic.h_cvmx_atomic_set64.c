
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int CVMX_SYNCWS ;

__attribute__((used)) static inline void cvmx_atomic_set64(int64_t *ptr, int64_t value)
{
    CVMX_SYNCWS;
    *ptr = value;
    CVMX_SYNCWS;
}
