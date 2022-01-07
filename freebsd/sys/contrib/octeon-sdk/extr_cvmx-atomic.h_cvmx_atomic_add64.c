
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int CVMX_SYNCWS ;
 int cvmx_atomic_add64_nosync (int *,int ) ;

__attribute__((used)) static inline void cvmx_atomic_add64(int64_t *ptr, int64_t incr)
{
    CVMX_SYNCWS;
    cvmx_atomic_add64_nosync(ptr, incr);
    CVMX_SYNCWS;
}
