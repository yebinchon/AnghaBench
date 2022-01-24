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
struct nb_service_softc {int /*<<< orphan*/  res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AL_NB_ACF_MISC_OFFSET ; 
 int /*<<< orphan*/  AL_NB_ACF_MISC_READ_BYPASS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nb_service_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  nb_service_spec ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct nb_service_softc *sc;
	uint32_t val;
	int err;

	sc = FUNC3(dev);

	err = FUNC0(dev, nb_service_spec, &sc->res);
	if (err != 0) {
		FUNC4(dev, "could not allocate resources\n");
		return (err);
	}

	/* Do not allow reads to bypass writes to different addresses */
	val = FUNC1(sc->res, AL_NB_ACF_MISC_OFFSET);
	val &= ~AL_NB_ACF_MISC_READ_BYPASS;
	FUNC2(sc->res, AL_NB_ACF_MISC_OFFSET, val);

	return (0);
}