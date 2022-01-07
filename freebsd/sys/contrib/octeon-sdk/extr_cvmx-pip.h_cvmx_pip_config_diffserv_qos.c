
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int qos; } ;
struct TYPE_4__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_pip_qos_diffx_t ;


 int CVMX_PIP_QOS_DIFFX (int ) ;
 int OCTEON_FEATURE_PKND ;
 int cvmx_write_csr (int ,scalar_t__) ;
 scalar_t__ octeon_has_feature (int ) ;

__attribute__((used)) static inline void cvmx_pip_config_diffserv_qos(uint64_t diffserv, uint64_t qos)
{
    if (octeon_has_feature(OCTEON_FEATURE_PKND))
    {

    }
    else
    {
        cvmx_pip_qos_diffx_t pip_qos_diffx;
        pip_qos_diffx.u64 = 0;
        pip_qos_diffx.s.qos = qos;
        cvmx_write_csr(CVMX_PIP_QOS_DIFFX(diffserv), pip_qos_diffx.u64);
    }
}
