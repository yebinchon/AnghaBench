#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  h_Fm; } ;
struct TYPE_5__ {scalar_t__ mdioIrq; int /*<<< orphan*/ * p_UnicastAddrHash; int /*<<< orphan*/ * p_MulticastAddrHash; int /*<<< orphan*/  macId; TYPE_1__ fmMacControllerDriver; } ;
typedef  TYPE_2__ t_Dtsec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ NO_IRQ ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  e_FM_INTR_TYPE_ERR ; 
 int /*<<< orphan*/  e_FM_INTR_TYPE_NORMAL ; 
 int /*<<< orphan*/  e_FM_MOD_1G_MAC ; 

__attribute__((used)) static void FUNC4(t_Dtsec *p_Dtsec)
{
    if (p_Dtsec->mdioIrq != NO_IRQ)
    {
        FUNC2(p_Dtsec->mdioIrq);
        FUNC3(p_Dtsec->mdioIrq);
    }
    FUNC0(p_Dtsec->fmMacControllerDriver.h_Fm, e_FM_MOD_1G_MAC, p_Dtsec->macId, e_FM_INTR_TYPE_ERR);
    FUNC0(p_Dtsec->fmMacControllerDriver.h_Fm, e_FM_MOD_1G_MAC, p_Dtsec->macId, e_FM_INTR_TYPE_NORMAL);

    /* release the driver's group hash table */
    FUNC1(p_Dtsec->p_MulticastAddrHash);
    p_Dtsec->p_MulticastAddrHash =   NULL;

    /* release the driver's individual hash table */
    FUNC1(p_Dtsec->p_UnicastAddrHash);
    p_Dtsec->p_UnicastAddrHash =     NULL;
}