
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset; int skip; } ;
struct TYPE_4__ {int u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_pip_bsel_ext_cfgx_t ;


 int CVMX_PIP_BSEL_EXT_CFGX (int) ;
 int OCTEON_FEATURE_BIT_EXTRACTOR ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;
 int octeon_has_feature (int ) ;

__attribute__((used)) static inline void cvmx_pip_bsel_config(int bit, int offset, int skip)
{
    cvmx_pip_bsel_ext_cfgx_t bsel_cfg;


    if (!octeon_has_feature(OCTEON_FEATURE_BIT_EXTRACTOR))
        return;

    bsel_cfg.u64 = cvmx_read_csr(CVMX_PIP_BSEL_EXT_CFGX(bit));
    bsel_cfg.s.offset = offset;
    bsel_cfg.s.skip = skip;
    cvmx_write_csr(CVMX_PIP_BSEL_EXT_CFGX(bit), bsel_cfg.u64);
}
