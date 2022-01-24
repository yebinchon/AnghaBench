#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_paddr_t ;
struct linux_dma_priv {int /*<<< orphan*/  dmat; int /*<<< orphan*/  ptree; } ;
struct linux_dma_obj {int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  dmamap; } ;
struct device {struct linux_dma_priv* dma_priv; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_1__ bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct linux_dma_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct linux_dma_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct linux_dma_obj*) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  linux_dma_obj_zone ; 
 struct linux_dma_obj* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct linux_dma_obj*) ; 

dma_addr_t
FUNC11(struct device *dev, vm_paddr_t phys, size_t len)
{
	struct linux_dma_priv *priv;
	struct linux_dma_obj *obj;
	int error, nseg;
	bus_dma_segment_t seg;

	priv = dev->dma_priv;

	/*
	 * If the resultant mapping will be entirely 1:1 with the
	 * physical address, short-circuit the remainder of the
	 * bus_dma API.  This avoids tracking collisions in the pctrie
	 * with the additional benefit of reducing overhead.
	 */
	if (FUNC5(priv->dmat, phys, len))
		return (phys);

	obj = FUNC9(linux_dma_obj_zone, M_NOWAIT);
	if (obj == NULL) {
		return (0);
	}

	FUNC0(priv);
	if (FUNC6(priv->dmat, 0, &obj->dmamap) != 0) {
		FUNC1(priv);
		FUNC10(linux_dma_obj_zone, obj);
		return (0);
	}

	nseg = -1;
	if (FUNC4(priv->dmat, obj->dmamap, phys, len,
	    BUS_DMA_NOWAIT, &seg, &nseg) != 0) {
		FUNC7(priv->dmat, obj->dmamap);
		FUNC1(priv);
		FUNC10(linux_dma_obj_zone, obj);
		return (0);
	}

	FUNC2(++nseg == 1, ("More than one segment (nseg=%d)", nseg));
	obj->dma_addr = seg.ds_addr;

	error = FUNC3(&priv->ptree, obj);
	if (error != 0) {
		FUNC8(priv->dmat, obj->dmamap);
		FUNC7(priv->dmat, obj->dmamap);
		FUNC1(priv);
		FUNC10(linux_dma_obj_zone, obj);
		return (0);
	}
	FUNC1(priv);
	return (obj->dma_addr);
}