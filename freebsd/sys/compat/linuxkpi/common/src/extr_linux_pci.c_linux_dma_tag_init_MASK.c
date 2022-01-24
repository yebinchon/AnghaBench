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
typedef  scalar_t__ u64 ;
struct linux_dma_priv {scalar_t__ dma_mask; scalar_t__ dmat; } ;
struct device {int /*<<< orphan*/  bsddev; struct linux_dma_priv* dma_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(struct device *dev, u64 dma_mask)
{
	struct linux_dma_priv *priv;
	int error;

	priv = dev->dma_priv;

	if (priv->dmat) {
		if (priv->dma_mask == dma_mask)
			return (0);

		FUNC1(priv->dmat);
	}

	priv->dma_mask = dma_mask;

	error = FUNC0(FUNC2(dev->bsddev),
	    1, 0,			/* alignment, boundary */
	    dma_mask,			/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filtfunc, filtfuncarg */
	    BUS_SPACE_MAXSIZE,		/* maxsize */
	    1,				/* nsegments */
	    BUS_SPACE_MAXSIZE,		/* maxsegsz */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockfuncarg */
	    &priv->dmat);
	return (-error);
}