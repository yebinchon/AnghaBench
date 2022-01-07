
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int key; } ;
struct TYPE_4__ {int u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_rnm_eer_key_t ;


 int CVMX_RNM_EER_KEY ;
 int OCTEON_FEATURE_CRYPTO ;
 int OCTEON_FEATURE_DORM_CRYPTO ;
 int cvmx_write_csr (int ,int ) ;
 int octeon_has_feature (int ) ;

int cvmx_crypto_dormant_enable(uint64_t key)
{
    if (octeon_has_feature(OCTEON_FEATURE_CRYPTO))
        return 1;

    if (octeon_has_feature(OCTEON_FEATURE_DORM_CRYPTO)) {
        cvmx_rnm_eer_key_t v;
        v.s.key = key;
        cvmx_write_csr(CVMX_RNM_EER_KEY, v.u64);
    }

    return octeon_has_feature(OCTEON_FEATURE_CRYPTO);
}
