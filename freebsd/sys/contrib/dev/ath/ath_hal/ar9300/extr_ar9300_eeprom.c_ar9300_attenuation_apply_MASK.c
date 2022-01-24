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
typedef  int /*<<< orphan*/  u_int16_t ;
struct TYPE_3__ {scalar_t__ ath_hal_min_gainidx; scalar_t__ ath_hal_ext_atten_margin_cfg; } ;
struct ath_hal {TYPE_1__ ah_config; } ;
struct TYPE_4__ {int ah_rx_chainmask; int ah_tx_chainmask; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct ath_hal*) ; 
 int AR_PHY_EXT_ATTEN_CTL_0 ; 
 int AR_PHY_EXT_ATTEN_CTL_1 ; 
 int AR_PHY_EXT_ATTEN_CTL_2 ; 
 int /*<<< orphan*/  AR_PHY_EXT_ATTEN_CTL_XATTEN1_DB ; 
 int /*<<< orphan*/  AR_PHY_EXT_ATTEN_CTL_XATTEN1_MARGIN ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ath_hal*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ath_hal*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct ath_hal*) ; 

HAL_BOOL
FUNC7(struct ath_hal *ah, u_int16_t channel)
{
	int i;
	uint32_t value;
	uint32_t ext_atten_reg[3] = {
	    AR_PHY_EXT_ATTEN_CTL_0,
	    AR_PHY_EXT_ATTEN_CTL_1,
	    AR_PHY_EXT_ATTEN_CTL_2
	};

	/*
	 * If it's an AR9462 and we're receiving on the second
	 * chain only, set the chain 0 details from chain 1
	 * calibration.
	 *
	 * This is from ath9k.
	 */
	if (FUNC1(ah) && (FUNC0(ah)->ah_rx_chainmask == 0x2)) {
		value = FUNC4(ah, 1, channel);
		FUNC3(ah, ext_atten_reg[0],
		    AR_PHY_EXT_ATTEN_CTL_XATTEN1_DB, value);
		value = FUNC5(ah, 1, channel);
		FUNC3(ah, ext_atten_reg[0],
		    AR_PHY_EXT_ATTEN_CTL_XATTEN1_MARGIN, value);
	}

	/*
	 * Now, loop over the configured transmit chains and
	 * load in the attenuation/margin settings as appropriate.
	 */
	for (i = 0; i < 3; i++) {
		if ((FUNC0(ah)->ah_tx_chainmask & (1 << i)) == 0)
			continue;

		value = FUNC4(ah, i, channel);
		FUNC3(ah, ext_atten_reg[i],
		    AR_PHY_EXT_ATTEN_CTL_XATTEN1_DB,
		    value);

		if (FUNC2(ah) &&
		    (FUNC6(ah) == 0) &&
		    ah->ah_config.ath_hal_ext_atten_margin_cfg) {
			value = 5;
		} else {
			value = FUNC5(ah, 0,
			    channel);
		}

		/*
		 * I'm not sure why it's loading in this setting into
		 * the chain 0 margin regardless of the current chain.
		 */
		if (ah->ah_config.ath_hal_min_gainidx)
			FUNC3(ah,
			    AR_PHY_EXT_ATTEN_CTL_0,
			    AR_PHY_EXT_ATTEN_CTL_XATTEN1_MARGIN,
			    value);

		FUNC3(ah,
		    ext_atten_reg[i],
		    AR_PHY_EXT_ATTEN_CTL_XATTEN1_MARGIN,
		    value);
	}

	return (0);
}