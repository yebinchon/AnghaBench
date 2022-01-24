#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  nia; int /*<<< orphan*/  plcrProfile; } ;
typedef  TYPE_1__ t_AdOfTypeResult ;

/* Variables and functions */
 int FM_PCD_AD_RESULT_EXTENDED_MODE ; 
 int FRM_REPLIC_FR_BIT ; 
 int FRM_REPLIC_NL_BIT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(void *p_ReplicAd, bool last)
{
    t_AdOfTypeResult    *p_CurrReplicAd = (t_AdOfTypeResult*)p_ReplicAd;
    uint32_t            tmp;

    tmp = FUNC0(p_CurrReplicAd->plcrProfile);
    if (last)
        /* clear the NL bit in case it's the last member in the group*/
        FUNC1(p_CurrReplicAd->plcrProfile,(tmp & ~FRM_REPLIC_NL_BIT));
    else
        /* set the NL bit in case it's not the last member in the group */
        FUNC1(p_CurrReplicAd->plcrProfile, (tmp |FRM_REPLIC_NL_BIT));

    /* set FR bit in the action descriptor */
    tmp = FUNC0(p_CurrReplicAd->nia);
    FUNC1(p_CurrReplicAd->nia,
        (tmp | FRM_REPLIC_FR_BIT | FM_PCD_AD_RESULT_EXTENDED_MODE ));
}