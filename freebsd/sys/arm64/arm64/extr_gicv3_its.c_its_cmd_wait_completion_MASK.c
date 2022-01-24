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
typedef  scalar_t__ uint64_t ;
struct its_cmd {int dummy; } ;
struct gicv3_its_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GITS_CREADR ; 
 struct gicv3_its_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct gicv3_its_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct gicv3_its_softc*,struct its_cmd*) ; 

__attribute__((used)) static void
FUNC5(device_t dev, struct its_cmd *cmd_first,
    struct its_cmd *cmd_last)
{
	struct gicv3_its_softc *sc;
	uint64_t first, last, read;
	size_t us_left;

	sc = FUNC1(dev);

	/*
	 * XXX ARM64TODO: This is obviously a significant delay.
	 * The reason for that is that currently the time frames for
	 * the command to complete are not known.
	 */
	us_left = 1000000;

	first = FUNC4(sc, cmd_first);
	last = FUNC4(sc, cmd_last);

	for (;;) {
		read = FUNC3(sc, GITS_CREADR);
		if (first < last) {
			if (read < first || read >= last)
				break;
		} else if (read < first && read >= last)
			break;

		if (us_left-- == 0) {
			/* This means timeout */
			FUNC2(dev,
			    "Timeout while waiting for CMD completion.\n");
			return;
		}
		FUNC0(1);
	}
}