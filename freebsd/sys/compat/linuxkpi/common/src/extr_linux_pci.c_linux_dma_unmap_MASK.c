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
struct linux_dma_priv {int /*<<< orphan*/  dmat; int /*<<< orphan*/  ptree; } ;
struct linux_dma_obj {int /*<<< orphan*/  dmamap; } ;
struct device {struct linux_dma_priv* dma_priv; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct linux_dma_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct linux_dma_priv*) ; 
 struct linux_dma_obj* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  linux_dma_obj_zone ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct linux_dma_obj*) ; 

void
FUNC8(struct device *dev, dma_addr_t dma_addr, size_t len)
{
	struct linux_dma_priv *priv;
	struct linux_dma_obj *obj;

	priv = dev->dma_priv;

	if (FUNC6(&priv->ptree))
		return;

	FUNC0(priv);
	obj = FUNC2(&priv->ptree, dma_addr);
	if (obj == NULL) {
		FUNC1(priv);
		return;
	}
	FUNC3(&priv->ptree, dma_addr);
	FUNC5(priv->dmat, obj->dmamap);
	FUNC4(priv->dmat, obj->dmamap);
	FUNC1(priv);

	FUNC7(linux_dma_obj_zone, obj);
}