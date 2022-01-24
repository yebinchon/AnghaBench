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
typedef  int /*<<< orphan*/  uint16_t ;
struct ti_pinmux_softc {int /*<<< orphan*/  sc_dev; } ;
struct ti_pinmux_padconf {int /*<<< orphan*/  reg_off; int /*<<< orphan*/ ** muxmodes; } ;
struct TYPE_2__ {unsigned int padconf_sate_mask; unsigned int padconf_muxmode_mask; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_1__* ti_pinmux_dev ; 
 int /*<<< orphan*/  FUNC3 (struct ti_pinmux_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct ti_pinmux_softc *sc,
    const struct ti_pinmux_padconf *padconf,
    const char *muxmode, unsigned int state)
{
	unsigned int mode;
	uint16_t reg_val;

	/* populate the new value for the PADCONF register */
	reg_val = (uint16_t)(state & ti_pinmux_dev->padconf_sate_mask);

	/* find the new mode requested */
	for (mode = 0; mode < 8; mode++) {
		if ((padconf->muxmodes[mode] != NULL) &&
		    (FUNC2(padconf->muxmodes[mode], muxmode) == 0)) {
			break;
		}
	}

	/* couldn't find the mux mode */
	if (mode >= 8) {
		FUNC1("Invalid mode \"%s\"\n", muxmode);
		return (EINVAL);
	}

	/* set the mux mode */
	reg_val |= (uint16_t)(mode & ti_pinmux_dev->padconf_muxmode_mask);

	if (bootverbose)
		FUNC0(sc->sc_dev, "setting internal %x for %s\n",
		    reg_val, muxmode);
	/* write the register value (16-bit writes) */
	FUNC3(sc, padconf->reg_off, reg_val);

	return (0);
}