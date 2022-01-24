#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int en; int ign_full; } ;
struct TYPE_4__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef  TYPE_2__ cvmx_gmxx_tx_ovr_bp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline int FUNC2(uint32_t interface, uint32_t port_mask)
{
    cvmx_gmxx_tx_ovr_bp_t gmxx_tx_ovr_bp;
    /* Check for valid arguments */
    if (port_mask & ~0xf || interface & ~0x1)
        return(-1);
    gmxx_tx_ovr_bp.u64 = 0;
    gmxx_tx_ovr_bp.s.en = port_mask; /* Per port Enable back pressure override */
    gmxx_tx_ovr_bp.s.ign_full = port_mask; /* Ignore the RX FIFO full when computing BP */
    FUNC1(FUNC0(interface), gmxx_tx_ovr_bp.u64);
    return(0);

}