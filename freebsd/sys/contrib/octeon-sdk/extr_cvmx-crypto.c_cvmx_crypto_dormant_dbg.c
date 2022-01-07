
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int dat; } ;
struct TYPE_4__ {TYPE_1__ s; int u64; } ;
typedef TYPE_2__ cvmx_rnm_eer_dbg_t ;


 int CVMX_RNM_EER_DBG ;
 int OCTEON_FEATURE_DORM_CRYPTO ;
 int cvmx_read_csr (int ) ;
 int octeon_has_feature (int ) ;

uint64_t cvmx_crypto_dormant_dbg(void)
{
    cvmx_rnm_eer_dbg_t dbg;

    if (!octeon_has_feature(OCTEON_FEATURE_DORM_CRYPTO))
        return 0;

    dbg.u64 = cvmx_read_csr(CVMX_RNM_EER_DBG);
    return dbg.s.dat;
}
