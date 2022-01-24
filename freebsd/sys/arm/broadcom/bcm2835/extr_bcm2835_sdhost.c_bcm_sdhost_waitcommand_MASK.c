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
struct bcm_sdhost_softc {int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HC_CMD_ENABLE ; 
 int /*<<< orphan*/  HC_COMMAND ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int FUNC1 (struct bcm_sdhost_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC3(struct bcm_sdhost_softc *sc)
{
	int timeout = 1000;

	FUNC2(&sc->mtx, MA_OWNED);

	while ((FUNC1(sc, HC_COMMAND) & HC_CMD_ENABLE) && --timeout > 0) {
		FUNC0(100);
	}

	return ((timeout > 0) ? 0 : 1);
}