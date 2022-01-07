
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CVMX_SYNCWS ;
 int cvmx_atomic_compare_and_store32_nosync (int *,int ,int ) ;

__attribute__((used)) static inline uint32_t cvmx_atomic_compare_and_store32(uint32_t *ptr, uint32_t old_val, uint32_t new_val)
{
    uint32_t ret;
    CVMX_SYNCWS;
    ret = cvmx_atomic_compare_and_store32_nosync(ptr, old_val, new_val);
    CVMX_SYNCWS;
    return ret;


}
