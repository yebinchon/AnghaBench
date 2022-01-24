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
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ti_mbox_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ti_mbox_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, int chan, uint32_t *data)
{
	struct ti_mbox_softc *sc;

	if (chan < 0 || chan > 7)
		return (EINVAL);
	sc = FUNC1(dev);

	return (FUNC2(sc, FUNC0(chan)));
}