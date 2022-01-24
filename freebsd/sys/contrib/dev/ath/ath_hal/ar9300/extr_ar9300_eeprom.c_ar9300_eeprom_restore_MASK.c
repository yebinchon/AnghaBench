#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  paprd_rate_mask_ht20; int /*<<< orphan*/  paprd_rate_mask_ht40; } ;
struct TYPE_6__ {int /*<<< orphan*/  paprd_rate_mask_ht20; int /*<<< orphan*/  paprd_rate_mask_ht40; } ;
struct TYPE_8__ {TYPE_2__ modal_header_5g; TYPE_1__ modal_header_2g; } ;
struct ath_hal_9300 {int /*<<< orphan*/  ah_5g_paprd_rate_mask_ht20; int /*<<< orphan*/  ah_5g_paprd_rate_mask_ht40; int /*<<< orphan*/  ah_2g_paprd_rate_mask_ht20; int /*<<< orphan*/  ah_2g_paprd_rate_mask_ht40; TYPE_3__ ah_eeprom; } ;
struct ath_hal {int dummy; } ;
typedef  TYPE_3__ ar9300_eeprom_t ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_FALSE ; 
 int /*<<< orphan*/  AH_TRUE ; 
 scalar_t__ FUNC1 (struct ath_hal*,TYPE_3__*,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

HAL_BOOL
FUNC5(struct ath_hal *ah)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);
    ar9300_eeprom_t *mptr;
    int mdata_size;
    HAL_BOOL status = AH_FALSE;

    mptr = &ahp->ah_eeprom;
    mdata_size = FUNC2();

    if (mptr != 0 && mdata_size > 0) {
#if AH_BYTE_ORDER == AH_BIG_ENDIAN
        FUNC3();
        FUNC4(mptr);
#endif
        /*
         * At this point, mptr points to the eeprom data structure
         * in its "default" state.  If this is big endian, swap the
         * data structures back to "little endian" form.
         */
        if (FUNC1(ah, mptr, mdata_size) >= 0) {
            status = AH_TRUE;
        }

#if AH_BYTE_ORDER == AH_BIG_ENDIAN
        /* Second Swap, back to Big Endian */
        FUNC3();
        FUNC4(mptr);
#endif

    }
    ahp->ah_2g_paprd_rate_mask_ht40 =
        mptr->modal_header_2g.paprd_rate_mask_ht40;
    ahp->ah_2g_paprd_rate_mask_ht20 =
        mptr->modal_header_2g.paprd_rate_mask_ht20;
    ahp->ah_5g_paprd_rate_mask_ht40 =
        mptr->modal_header_5g.paprd_rate_mask_ht40;
    ahp->ah_5g_paprd_rate_mask_ht20 =
        mptr->modal_header_5g.paprd_rate_mask_ht20;
    return status;
}