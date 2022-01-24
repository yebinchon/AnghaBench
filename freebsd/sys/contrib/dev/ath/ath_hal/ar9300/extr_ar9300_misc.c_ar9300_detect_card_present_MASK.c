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
typedef  int u_int32_t ;
typedef  int u_int16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_macVersion; int ah_macRev; } ;
typedef  int HAL_BOOL ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AR_SREV ; 
 int AR_SREV_ID ; 
 int AR_SREV_REVISION ; 
 int /*<<< orphan*/  AR_SREV_REVISION2 ; 
 int AR_SREV_TYPE2_S ; 
 int /*<<< orphan*/  AR_SREV_VERSION ; 
 int AR_SREV_VERSION2 ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ath_hal*,int /*<<< orphan*/ ) ; 

HAL_BOOL
FUNC4(struct ath_hal *ah)
{
    u_int16_t mac_version, mac_rev;
    u_int32_t v;

    /*
     * Read the Silicon Revision register and compare that
     * to what we read at attach time.  If the same, we say
     * a card/device is present.
     */
    v = FUNC3(ah, FUNC1(ah, AR_SREV)) & AR_SREV_ID;
    if (v == 0xFF) {
        /* new SREV format */
        v = FUNC3(ah, FUNC1(ah, AR_SREV));
        /*
         * Include 6-bit Chip Type (masked to 0) to differentiate
         * from pre-Sowl versions
         */
        mac_version = (v & AR_SREV_VERSION2) >> AR_SREV_TYPE2_S;
        mac_rev = FUNC2(v, AR_SREV_REVISION2);
    } else {
        mac_version = FUNC2(v, AR_SREV_VERSION);
        mac_rev = v & AR_SREV_REVISION;
    }
    return (FUNC0(ah)->ah_macVersion == mac_version &&
            FUNC0(ah)->ah_macRev == mac_rev);
}