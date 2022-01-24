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
struct usbphy_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int FUNC1 (struct usbphy_softc*,int) ; 

__attribute__((used)) static int
FUNC2(struct usbphy_softc *sc, uint32_t reg, uint32_t mask, uint32_t val)
{
	int i;

	for (i = 0; i < 1000; i++) {
		if ((FUNC1(sc, reg) & mask) == val)
			return (0);
		FUNC0(10);
	}
	return (ETIMEDOUT);
}