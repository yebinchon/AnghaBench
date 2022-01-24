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
struct sdma_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDMAARM_HSTART ; 
 int /*<<< orphan*/  FUNC0 (struct sdma_softc*,int /*<<< orphan*/ ,int) ; 
 struct sdma_softc* sdma_sc ; 

int
FUNC1(int chn)
{
	struct sdma_softc *sc;

	sc = sdma_sc;

	FUNC0(sc, SDMAARM_HSTART, (1 << chn));

	return (0);
}