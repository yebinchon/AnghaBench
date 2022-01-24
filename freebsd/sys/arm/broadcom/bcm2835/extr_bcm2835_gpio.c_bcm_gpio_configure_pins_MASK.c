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
struct bcm_gpio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  function ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  BCM2835_PUD_DOWN 130 
#define  BCM2835_PUD_OFF 129 
#define  BCM2835_PUD_UP 128 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  GPIO_PIN_PULLDOWN ; 
 int /*<<< orphan*/  GPIO_PIN_PULLUP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char**,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ bootverbose ; 
 struct bcm_gpio_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static int
FUNC10(device_t dev, phandle_t cfgxref)
{
	phandle_t cfgnode;
	int i, pintuples, pulltuples;
	uint32_t pin;
	uint32_t *pins;
	uint32_t *pulls;
	uint32_t function;
	static struct bcm_gpio_softc *sc;

	sc = FUNC7(dev);
	cfgnode = FUNC3(cfgxref);

	pins = NULL;
	pintuples = FUNC1(cfgnode, "brcm,pins",
	    sizeof(*pins), (void **)&pins);

	char name[32];
	FUNC2(cfgnode, "name", &name, sizeof(name));

	if (pintuples < 0)
		return (ENOENT);

	if (pintuples == 0)
		return (0); /* Empty property is not an error. */

	if (FUNC0(cfgnode, "brcm,function", &function,
	    sizeof(function)) <= 0) {
		FUNC4(pins);
		return (EINVAL);
	}

	pulls = NULL;
	pulltuples = FUNC1(cfgnode, "brcm,pull",
	    sizeof(*pulls), (void **)&pulls);

	if ((pulls != NULL) && (pulltuples != pintuples)) {
		FUNC4(pins);
		FUNC4(pulls);
		return (EINVAL);
	}

	for (i = 0; i < pintuples; i++) {
		pin = pins[i];
		FUNC6(dev, pin, function);
		if (bootverbose)
			FUNC8(dev, "set pin %d to func %d", pin, function);
		if (pulls) {
			if (bootverbose)
				FUNC9(", pull %d", pulls[i]);
			switch (pulls[i]) {
			/* Convert to gpio(4) flags */
			case BCM2835_PUD_OFF:
				FUNC5(dev, pin, 0);
				break;
			case BCM2835_PUD_UP:
				FUNC5(dev, pin, GPIO_PIN_PULLUP);
				break;
			case BCM2835_PUD_DOWN:
				FUNC5(dev, pin, GPIO_PIN_PULLDOWN);
				break;
			default:
				FUNC9("%s: invalid pull value for pin %d: %d\n",
				    name, pin, pulls[i]);
			}
		}
		if (bootverbose)
			FUNC9("\n");
	}

	FUNC4(pins);
	if (pulls)
		FUNC4(pulls);

	return (0);
}