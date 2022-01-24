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
struct ath_hal_private {int dummy; } ;
struct ath_hal {int dummy; } ;
typedef  int int16_t ;
struct TYPE_4__ {TYPE_1__* nfp; } ;
struct TYPE_3__ {int nominal; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct ath_hal*) ; 
 struct ath_hal_private* FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL ; 
 int AR_PHY_AGC_CONTROL_NF ; 
 int /*<<< orphan*/  AR_PHY_EXT_CCA ; 
 int /*<<< orphan*/  AR_PHY_EXT_MINCCA_PWR ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ath_hal*,int /*<<< orphan*/ ) ; 

int16_t FUNC4(struct ath_hal *ah)
{
    int16_t nf;
#if 0
    struct ath_hal_private *ahpriv = AH_PRIVATE(ah);
#endif

    if ((FUNC3(ah, AR_PHY_AGC_CONTROL) & AR_PHY_AGC_CONTROL_NF) == 0) {
        /* Noise floor calibration value is ready */
        nf = FUNC2(FUNC3(ah, AR_PHY_EXT_CCA), AR_PHY_EXT_MINCCA_PWR);
    } else {
        /* NF calibration is not done, return nominal value */
        nf = FUNC0(ah)->nfp->nominal;
    }
    if (nf & 0x100) {
        nf = (0 - ((nf ^ 0x1ff) + 1));
    }
    return nf;
}