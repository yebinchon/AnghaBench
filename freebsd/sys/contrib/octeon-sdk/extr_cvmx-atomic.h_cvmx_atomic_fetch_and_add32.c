
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 int CVMX_SYNCWS ;
 int cvmx_atomic_fetch_and_add32_nosync (int *,int ) ;

__attribute__((used)) static inline int32_t cvmx_atomic_fetch_and_add32(int32_t *ptr, int32_t incr)
{
    uint32_t ret;
    CVMX_SYNCWS;
    ret = cvmx_atomic_fetch_and_add32_nosync(ptr, incr);
    CVMX_SYNCWS;
    return ret;
}
