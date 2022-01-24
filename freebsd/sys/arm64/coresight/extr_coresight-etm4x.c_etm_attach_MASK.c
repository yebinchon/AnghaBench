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
struct etm_softc {int /*<<< orphan*/  pdata; int /*<<< orphan*/  res; } ;
struct coresight_desc {int /*<<< orphan*/  dev_type; int /*<<< orphan*/  dev; int /*<<< orphan*/  pdata; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CORESIGHT_ETMV4 ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct coresight_desc*) ; 
 struct etm_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  etm_spec ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct coresight_desc desc;
	struct etm_softc *sc;

	sc = FUNC3(dev);

	if (FUNC0(dev, etm_spec, &sc->res) != 0) {
		FUNC4(dev, "cannot allocate resources for device\n");
		return (ENXIO);
	}

	sc->pdata = FUNC1(dev);
	desc.pdata = sc->pdata;
	desc.dev = dev;
	desc.dev_type = CORESIGHT_ETMV4;
	FUNC2(&desc);

	return (0);
}