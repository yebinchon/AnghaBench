
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_5__ {void* grp_msk; } ;
struct TYPE_7__ {int u64; TYPE_1__ s; } ;
typedef TYPE_3__ cvmx_sso_ppx_grp_msk_t ;
struct TYPE_6__ {void* grp_msk; } ;
struct TYPE_8__ {int u64; TYPE_2__ s; } ;
typedef TYPE_4__ cvmx_pow_pp_grp_mskx_t ;


 int CVMX_POW_PP_GRP_MSKX (void*) ;
 int CVMX_SSO_PPX_GRP_MSK (void*) ;
 int OCTEON_FEATURE_CN68XX_WQE ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;
 scalar_t__ octeon_has_feature (int ) ;

__attribute__((used)) static inline void cvmx_pow_set_group_mask(uint64_t core_num, uint64_t mask)
{

    if (octeon_has_feature(OCTEON_FEATURE_CN68XX_WQE))
    {
        cvmx_sso_ppx_grp_msk_t grp_msk;
        grp_msk.s.grp_msk = mask;
        cvmx_write_csr(CVMX_SSO_PPX_GRP_MSK(core_num), grp_msk.u64);
    }
    else
    {
        cvmx_pow_pp_grp_mskx_t grp_msk;
        grp_msk.u64 = cvmx_read_csr(CVMX_POW_PP_GRP_MSKX(core_num));
        grp_msk.s.grp_msk = mask;
        cvmx_write_csr(CVMX_POW_PP_GRP_MSKX(core_num), grp_msk.u64);
    }
}
