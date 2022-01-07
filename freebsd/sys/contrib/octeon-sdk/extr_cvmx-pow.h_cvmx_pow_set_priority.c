
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_5__ {int qos0_pri; int qos1_pri; int qos2_pri; int qos3_pri; int qos4_pri; int qos5_pri; int qos6_pri; int qos7_pri; } ;
struct TYPE_7__ {void* u64; TYPE_1__ s; } ;
typedef TYPE_3__ cvmx_sso_ppx_qos_pri_t ;
struct TYPE_6__ {int qos0_pri; int qos1_pri; int qos2_pri; int qos3_pri; int qos4_pri; int qos5_pri; int qos6_pri; int qos7_pri; } ;
struct TYPE_8__ {void* u64; TYPE_2__ s; } ;
typedef TYPE_4__ cvmx_pow_pp_grp_mskx_t ;


 int CVMX_POW_PP_GRP_MSKX (int ) ;
 int CVMX_SSO_PPX_QOS_PRI (int ) ;
 int OCTEON_CN3XXX ;
 int OCTEON_FEATURE_CN68XX_WQE ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_dprintf (char*,unsigned long long) ;
 int cvmx_pop (int) ;
 void* cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,void*) ;
 scalar_t__ octeon_has_feature (int ) ;

__attribute__((used)) static inline void cvmx_pow_set_priority(uint64_t core_num, const uint8_t priority[])
{
    if (OCTEON_IS_MODEL(OCTEON_CN3XXX))
        return;


    {
        int i;
        uint32_t prio_mask = 0;

        for(i=0; i<8; i++)
            if (priority[i] != 0xF)
                prio_mask |= 1<<priority[i];

        if ( prio_mask ^ ((1<<cvmx_pop(prio_mask)) - 1))
        {
            cvmx_dprintf("ERROR: POW static priorities should be contiguous (0x%llx)\n", (unsigned long long)prio_mask);
            return;
        }
    }


    if (octeon_has_feature(OCTEON_FEATURE_CN68XX_WQE))
    {
        cvmx_sso_ppx_qos_pri_t qos_pri;

        qos_pri.u64 = cvmx_read_csr(CVMX_SSO_PPX_QOS_PRI(core_num));
        qos_pri.s.qos0_pri = priority[0];
        qos_pri.s.qos1_pri = priority[1];
        qos_pri.s.qos2_pri = priority[2];
        qos_pri.s.qos3_pri = priority[3];
        qos_pri.s.qos4_pri = priority[4];
        qos_pri.s.qos5_pri = priority[5];
        qos_pri.s.qos6_pri = priority[6];
        qos_pri.s.qos7_pri = priority[7];
        cvmx_write_csr(CVMX_SSO_PPX_QOS_PRI(core_num), qos_pri.u64);
    }
    else
    {
        cvmx_pow_pp_grp_mskx_t grp_msk;

        grp_msk.u64 = cvmx_read_csr(CVMX_POW_PP_GRP_MSKX(core_num));
        grp_msk.s.qos0_pri = priority[0];
        grp_msk.s.qos1_pri = priority[1];
        grp_msk.s.qos2_pri = priority[2];
        grp_msk.s.qos3_pri = priority[3];
        grp_msk.s.qos4_pri = priority[4];
        grp_msk.s.qos5_pri = priority[5];
        grp_msk.s.qos6_pri = priority[6];
        grp_msk.s.qos7_pri = priority[7];

        cvmx_write_csr(CVMX_POW_PP_GRP_MSKX(core_num), grp_msk.u64);
    }
}
