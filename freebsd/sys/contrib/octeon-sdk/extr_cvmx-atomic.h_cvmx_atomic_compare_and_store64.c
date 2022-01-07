
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CVMX_SYNCWS ;
 int cvmx_atomic_compare_and_store64_nosync (int *,int ,int ) ;

__attribute__((used)) static inline uint64_t cvmx_atomic_compare_and_store64(uint64_t *ptr, uint64_t old_val, uint64_t new_val)
{
    uint64_t ret;
    CVMX_SYNCWS;
    ret = cvmx_atomic_compare_and_store64_nosync(ptr, old_val, new_val);
    CVMX_SYNCWS;
    return ret;
}
