
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int uint32_t ;
struct TYPE_5__ {int iv; } ;
struct TYPE_7__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef TYPE_3__ cvmx_pip_crc_ivx_t ;
struct TYPE_6__ {void* reflect; void* invres; } ;
struct TYPE_8__ {scalar_t__ u64; TYPE_2__ s; } ;
typedef TYPE_4__ cvmx_pip_crc_ctlx_t ;


 int CVMX_PIP_CRC_CTLX (void*) ;
 int CVMX_PIP_CRC_IVX (void*) ;
 int OCTEON_CN38XX ;
 int OCTEON_CN58XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_write_csr (int ,scalar_t__) ;

__attribute__((used)) static inline void cvmx_pip_config_crc(uint64_t interface, uint64_t invert_result, uint64_t reflect, uint32_t initialization_vector)
{
    if ((OCTEON_IS_MODEL(OCTEON_CN38XX) || OCTEON_IS_MODEL(OCTEON_CN58XX)))
    {
        cvmx_pip_crc_ctlx_t config;
        cvmx_pip_crc_ivx_t pip_crc_ivx;

        config.u64 = 0;
        config.s.invres = invert_result;
        config.s.reflect = reflect;
        cvmx_write_csr(CVMX_PIP_CRC_CTLX(interface), config.u64);

        pip_crc_ivx.u64 = 0;
        pip_crc_ivx.s.iv = initialization_vector;
        cvmx_write_csr(CVMX_PIP_CRC_IVX(interface), pip_crc_ivx.u64);
    }
}
