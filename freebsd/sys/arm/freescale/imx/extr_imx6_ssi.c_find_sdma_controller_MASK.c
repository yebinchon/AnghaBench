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
struct sc_info {struct sdma_softc* sdma_sc; int /*<<< orphan*/  dev; void* sdma_ev_tx; void* sdma_ev_rx; } ;
typedef  int phandle_t ;
typedef  void* pcell_t ;
typedef  int /*<<< orphan*/  dts_value ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int DMAS_TOTAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,void**,int) ; 
 int FUNC1 (int,char*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sdma_softc* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct sc_info *sc)
{
	struct sdma_softc *sdma_sc;
	phandle_t node, sdma_node;
	device_t sdma_dev;
	pcell_t dts_value[DMAS_TOTAL];
	int len;

	if ((node = FUNC7(sc->dev)) == -1)
		return (ENXIO);

	if ((len = FUNC1(node, "dmas")) <= 0)
		return (ENXIO);

	if (len != sizeof(dts_value)) {
		FUNC6(sc->dev,
		    "\"dmas\" property length is invalid: %d (expected %d)",
		    len, sizeof(dts_value));
		return (ENXIO);
	}

	FUNC0(node, "dmas", dts_value, sizeof(dts_value));

	sc->sdma_ev_rx = dts_value[1];
	sc->sdma_ev_tx = dts_value[5];

	sdma_node = FUNC2(dts_value[0]);

	sdma_sc = NULL;

	sdma_dev = FUNC4(FUNC3("sdma"), 0);
	if (sdma_dev)
		sdma_sc = FUNC5(sdma_dev);

	if (sdma_sc == NULL) {
		FUNC6(sc->dev, "No sDMA found. Can't operate\n");
		return (ENXIO);
	}

	sc->sdma_sc = sdma_sc;

	return (0);
}