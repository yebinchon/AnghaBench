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
typedef  int uint32_t ;
struct omap_tll_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  OMAP_USBTLL_TLL_SHARED_CONF ; 
 int TLL_CHANNEL_CONF_CHANEN ; 
 int TLL_CHANNEL_CONF_ULPIDDRMODE ; 
 int TLL_CHANNEL_CONF_ULPINOBITSTUFF ; 
 int TLL_CHANNEL_CONF_UTMIAUTOIDLE ; 
 int TLL_SHARED_CONF_FCLK_IS_ON ; 
 int TLL_SHARED_CONF_USB_180D_SDR_EN ; 
 int TLL_SHARED_CONF_USB_90D_DDR_EN ; 
 int TLL_SHARED_CONF_USB_DIVRATIO_2 ; 
 int TLL_SHARED_CONF_USB_DIVRATIO_MASK ; 
 int FUNC1 (struct omap_tll_softc*,int /*<<< orphan*/ ) ; 
 struct omap_tll_softc* omap_tll_sc ; 
 int /*<<< orphan*/  FUNC2 (struct omap_tll_softc*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(unsigned int en_mask)
{
	struct omap_tll_softc *sc;
	unsigned int i;
	uint32_t reg;

	sc = omap_tll_sc;
	if (sc == NULL)
		return;

	/* There are 3 TLL channels, one per USB controller so set them all up the
	 * same, SDR mode, bit stuffing and no autoidle.
	 */
	for (i=0; i<3; i++) {
		reg = FUNC1(sc, FUNC0(i));

		reg &= ~(TLL_CHANNEL_CONF_UTMIAUTOIDLE
				 | TLL_CHANNEL_CONF_ULPINOBITSTUFF
				 | TLL_CHANNEL_CONF_ULPIDDRMODE);

		FUNC2(sc, FUNC0(i), reg);
	}

	/* Program the common TLL register */
	reg = FUNC1(sc, OMAP_USBTLL_TLL_SHARED_CONF);

	reg &= ~( TLL_SHARED_CONF_USB_90D_DDR_EN
			| TLL_SHARED_CONF_USB_DIVRATIO_MASK);
	reg |=  ( TLL_SHARED_CONF_FCLK_IS_ON
			| TLL_SHARED_CONF_USB_DIVRATIO_2
			| TLL_SHARED_CONF_USB_180D_SDR_EN);

	FUNC2(sc, OMAP_USBTLL_TLL_SHARED_CONF, reg);

	/* Enable channels now */
	for (i = 0; i < 3; i++) {
		reg = FUNC1(sc, FUNC0(i));

		/* Enable only the reg that is needed */
		if ((en_mask & (1 << i)) == 0)
			continue;

		reg |= TLL_CHANNEL_CONF_CHANEN;
		FUNC2(sc, FUNC0(i), reg);
	}
}