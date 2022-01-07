
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {scalar_t__ en; } ;
struct TYPE_4__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_pip_tag_incx_t ;


 int CVMX_PIP_TAG_INCX (int) ;
 int cvmx_write_csr (int ,scalar_t__) ;

__attribute__((used)) static inline void cvmx_pip_tag_mask_clear(uint64_t mask_index)
{
    uint64_t index;
    cvmx_pip_tag_incx_t pip_tag_incx;
    pip_tag_incx.u64 = 0;
    pip_tag_incx.s.en = 0;
    for (index=mask_index*16; index<(mask_index+1)*16; index++)
        cvmx_write_csr(CVMX_PIP_TAG_INCX(index), pip_tag_incx.u64);
}
