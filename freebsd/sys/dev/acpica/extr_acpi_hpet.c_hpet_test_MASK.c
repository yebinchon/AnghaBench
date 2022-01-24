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
typedef  scalar_t__ uint32_t ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct hpet_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  mem_res; } ;
struct bintime {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPET_MAIN_COUNTER ; 
 int /*<<< orphan*/  FUNC0 (struct bintime*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (struct bintime*,struct bintime*) ; 
 int /*<<< orphan*/  FUNC2 (struct bintime*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static void
FUNC5(struct hpet_softc *sc)
{
	int i;
	uint32_t u1, u2;
	struct bintime b0, b1, b2;
	struct timespec ts;

	FUNC2(&b0);
	FUNC2(&b0);
	FUNC2(&b1);
	u1 = FUNC3(sc->mem_res, HPET_MAIN_COUNTER);
	for (i = 1; i < 1000; i++)
		u2 = FUNC3(sc->mem_res, HPET_MAIN_COUNTER);
	FUNC2(&b2);
	u2 = FUNC3(sc->mem_res, HPET_MAIN_COUNTER);

	FUNC1(&b2, &b1);
	FUNC1(&b1, &b0);
	FUNC1(&b2, &b1);
	FUNC0(&b2, &ts);

	FUNC4(sc->dev, "%ld.%09ld: %u ... %u = %u\n",
	    (long)ts.tv_sec, ts.tv_nsec, u1, u2, u2 - u1);

	FUNC4(sc->dev, "time per call: %ld ns\n", ts.tv_nsec / 1000);
}