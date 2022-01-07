
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int en; int ign_full; } ;
struct TYPE_4__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_gmxx_tx_ovr_bp_t ;


 int CVMX_GMXX_TX_OVR_BP (int) ;
 int cvmx_write_csr (int ,scalar_t__) ;

__attribute__((used)) static inline int cvmx_gmx_set_backpressure_override(uint32_t interface, uint32_t port_mask)
{
    cvmx_gmxx_tx_ovr_bp_t gmxx_tx_ovr_bp;

    if (port_mask & ~0xf || interface & ~0x1)
        return(-1);
    gmxx_tx_ovr_bp.u64 = 0;
    gmxx_tx_ovr_bp.s.en = port_mask;
    gmxx_tx_ovr_bp.s.ign_full = port_mask;
    cvmx_write_csr(CVMX_GMXX_TX_OVR_BP(interface), gmxx_tx_ovr_bp.u64);
    return(0);

}
