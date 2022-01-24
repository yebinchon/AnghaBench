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
struct edma_softc {int device_id; int /*<<< orphan*/  err_ih; int /*<<< orphan*/ * res; int /*<<< orphan*/  tc_ih; void* bsh_tcd; void* bst_tcd; void* bsh; void* bst; int /*<<< orphan*/  channel_free; int /*<<< orphan*/  channel_configure; int /*<<< orphan*/  dma_request; int /*<<< orphan*/  dma_setup; int /*<<< orphan*/  dma_stop; int /*<<< orphan*/  dev; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int*,int) ; 
 int FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct edma_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  channel_configure ; 
 int /*<<< orphan*/  channel_free ; 
 struct edma_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dma_request ; 
 int /*<<< orphan*/  dma_setup ; 
 int /*<<< orphan*/  dma_stop ; 
 int /*<<< orphan*/  edma_err_intr ; 
 int /*<<< orphan*/  edma_spec ; 
 int /*<<< orphan*/  edma_transfer_complete_intr ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct edma_softc *sc;
	phandle_t node;
	int dts_value;
	int len;

	sc = FUNC4(dev);
	sc->dev = dev;

	if ((node = FUNC6(sc->dev)) == -1)
		return (ENXIO);

	if ((len = FUNC1(node, "device-id")) <= 0)
		return (ENXIO);

	FUNC0(node, "device-id", &dts_value, len);
	sc->device_id = dts_value;

	sc->dma_stop = dma_stop;
	sc->dma_setup = dma_setup;
	sc->dma_request = dma_request;
	sc->channel_configure = channel_configure;
	sc->channel_free = channel_free;

	if (FUNC2(dev, edma_spec, sc->res)) {
		FUNC5(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC8(sc->res[0]);
	sc->bsh = FUNC7(sc->res[0]);
	sc->bst_tcd = FUNC8(sc->res[1]);
	sc->bsh_tcd = FUNC7(sc->res[1]);

	/* Setup interrupt handlers */
	if (FUNC3(dev, sc->res[2], INTR_TYPE_BIO | INTR_MPSAFE,
		NULL, edma_transfer_complete_intr, sc, &sc->tc_ih)) {
		FUNC5(dev, "Unable to alloc DMA intr resource.\n");
		return (ENXIO);
	}

	if (FUNC3(dev, sc->res[3], INTR_TYPE_BIO | INTR_MPSAFE,
		NULL, edma_err_intr, sc, &sc->err_ih)) {
		FUNC5(dev, "Unable to alloc DMA Err intr resource.\n");
		return (ENXIO);
	}

	return (0);
}