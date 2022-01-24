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
struct funnel_softc {int /*<<< orphan*/  pdata; int /*<<< orphan*/  res; } ;
struct coresight_desc {int /*<<< orphan*/  dev_type; int /*<<< orphan*/  dev; int /*<<< orphan*/  pdata; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CORESIGHT_FUNNEL ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct coresight_desc*) ; 
 struct funnel_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  funnel_spec ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct coresight_desc desc;
	struct funnel_softc *sc;

	sc = FUNC3(dev);

	if (FUNC0(dev, funnel_spec, &sc->res) != 0) {
		FUNC4(dev, "cannot allocate resources for device\n");
		return (ENXIO);
	}

	sc->pdata = FUNC1(dev);
	desc.pdata = sc->pdata;
	desc.dev = dev;
	desc.dev_type = CORESIGHT_FUNNEL;
	FUNC2(&desc);

	return (0);
}