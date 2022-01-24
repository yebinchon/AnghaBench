#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int u_int16_t ;
struct ath_hal_9300 {int ah_assoc_id; scalar_t__ ah_bssid; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_BSS_ID0 ; 
 int /*<<< orphan*/  AR_BSS_ID1 ; 
 int AR_BSS_ID1_AID_S ; 
 int /*<<< orphan*/  IEEE80211_ADDR_LEN ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 

void
FUNC5(struct ath_hal *ah, const u_int8_t *bssid,
    u_int16_t assoc_id)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);

    /* save bssid and assoc_id for restore on reset */
    FUNC3(ahp->ah_bssid, bssid, IEEE80211_ADDR_LEN);
    ahp->ah_assoc_id = assoc_id;

    FUNC4(ah, AR_BSS_ID0, FUNC2(ahp->ah_bssid));
    FUNC4(ah, AR_BSS_ID1, FUNC1(ahp->ah_bssid + 4) |
                                 ((assoc_id & 0x3fff) << AR_BSS_ID1_AID_S));
}