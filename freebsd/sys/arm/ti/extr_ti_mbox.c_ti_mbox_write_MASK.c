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
typedef  int /*<<< orphan*/  uint32_t ;
struct ti_mbox_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_mbox_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ti_mbox_softc*) ; 
 struct ti_mbox_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (struct ti_mbox_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ti_mbox_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev, int chan, uint32_t data)
{
	int limit = 500;
	struct ti_mbox_softc *sc;

	if (chan < 0 || chan > 7)
		return (EINVAL);
	sc = FUNC5(dev);
	FUNC2(sc);
	/* XXX implement interrupt method */
	while (FUNC7(sc, FUNC1(chan)) == 1 && 
	    limit--) {
		FUNC0(10);
	}
	if (limit == 0) {
		FUNC6(dev, "FIFOSTAUS%d stuck\n", chan);
		FUNC4(sc);
		return (EAGAIN);
	}
	FUNC8(sc, FUNC3(chan), data);

	return (0);
}