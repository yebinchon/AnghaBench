#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  channel; } ;
typedef  TYPE_1__ HAL_CHANNEL_INTERNAL ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC15 (struct ath_hal*,struct ieee80211_channel const*) ; 

HAL_BOOL
FUNC16(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
    HAL_CHANNEL_INTERNAL *ichan = FUNC15(ah, chan);

    FUNC13(ah, FUNC3(chan));

    FUNC14(ah, FUNC3(chan));

    FUNC4(ah, FUNC3(chan));
    FUNC6(ah);

    FUNC12(ah, FUNC3(chan));

	/* wait for Poseidon internal regular turnning */
    /* for Hornet we move it before initPLL to avoid an access issue */
    /* Function not used when EMULATION. */
    if (!FUNC1(ah) && !FUNC2(ah) && !FUNC0(ah)) {
        FUNC7(ah);
    }

    FUNC5(ah, ichan->channel);
    FUNC8(ah, ichan->channel);
    FUNC9(ah);
    if(!FUNC2(ah))
    {
        FUNC10(ah);
    }

    FUNC11(ah, ichan->channel);

    return AH_TRUE;
}