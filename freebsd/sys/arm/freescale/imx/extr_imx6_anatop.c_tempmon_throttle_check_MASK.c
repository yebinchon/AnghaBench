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
struct imx6_anatop_softc {scalar_t__ temp_last_cnt; scalar_t__ temp_throttle_trigger_cnt; scalar_t__ temp_throttle_reset_cnt; int /*<<< orphan*/  temp_throttle_delay; int /*<<< orphan*/  temp_throttle_callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void (*) (void*),struct imx6_anatop_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx6_anatop_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct imx6_anatop_softc*) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct imx6_anatop_softc *sc = arg;

	/* Lower counts are higher temperatures. */
	if (sc->temp_last_cnt < sc->temp_throttle_trigger_cnt)
		FUNC2(sc);
	else if (sc->temp_last_cnt > (sc->temp_throttle_reset_cnt))
		FUNC1(sc);

	FUNC0(&sc->temp_throttle_callout, sc->temp_throttle_delay,
		0, tempmon_throttle_check, sc, 0);

}