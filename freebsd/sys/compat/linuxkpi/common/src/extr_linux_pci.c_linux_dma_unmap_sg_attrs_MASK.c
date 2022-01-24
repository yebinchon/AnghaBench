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
struct scatterlist {int /*<<< orphan*/  dma_map; } ;
struct linux_dma_priv {int /*<<< orphan*/  dmat; } ;
struct dma_attrs {int dummy; } ;
struct device {struct linux_dma_priv* dma_priv; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct linux_dma_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct linux_dma_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct device *dev, struct scatterlist *sgl,
    int nents, enum dma_data_direction dir, struct dma_attrs *attrs)
{
	struct linux_dma_priv *priv;

	priv = dev->dma_priv;

	FUNC0(priv);
	FUNC3(priv->dmat, sgl->dma_map);
	FUNC2(priv->dmat, sgl->dma_map);
	FUNC1(priv);
}