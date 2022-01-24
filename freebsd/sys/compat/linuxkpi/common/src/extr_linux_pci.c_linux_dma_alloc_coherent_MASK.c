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
typedef  scalar_t__ vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct linux_dma_priv {scalar_t__ dma_mask; } ;
struct device {struct linux_dma_priv* dma_priv; } ;
typedef  int gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 scalar_t__ BUS_SPACE_MAXADDR ; 
 scalar_t__ BUS_SPACE_MAXADDR_32BIT ; 
 int GFP_DMA32 ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  VM_MEMATTR_DEFAULT ; 
 size_t FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (size_t,int,int /*<<< orphan*/ ,scalar_t__,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

void *
FUNC5(struct device *dev, size_t size,
    dma_addr_t *dma_handle, gfp_t flag)
{
	struct linux_dma_priv *priv;
	vm_paddr_t high;
	size_t align;
	void *mem;

	if (dev == NULL || dev->dma_priv == NULL) {
		*dma_handle = 0;
		return (NULL);
	}
	priv = dev->dma_priv;
	if (priv->dma_mask)
		high = priv->dma_mask;
	else if (flag & GFP_DMA32)
		high = BUS_SPACE_MAXADDR_32BIT;
	else
		high = BUS_SPACE_MAXADDR;
	align = PAGE_SIZE << FUNC0(size);
	mem = (void *)FUNC1(size, flag, 0, high, align, 0,
	    VM_MEMATTR_DEFAULT);
	if (mem != NULL) {
		*dma_handle = FUNC3(dev, FUNC4(mem), size);
		if (*dma_handle == 0) {
			FUNC2((vm_offset_t)mem, size);
			mem = NULL;
		}
	} else {
		*dma_handle = 0;
	}
	return (mem);
}