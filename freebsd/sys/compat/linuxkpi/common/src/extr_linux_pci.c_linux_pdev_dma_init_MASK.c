#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct linux_dma_priv* dma_priv; } ;
struct pci_dev {TYPE_1__ dev; } ;
struct linux_dma_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  ptree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct linux_dma_priv*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct linux_dma_priv* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct pci_dev *pdev)
{
	struct linux_dma_priv *priv;
	int error;

	priv = FUNC3(sizeof(*priv), M_DEVBUF, M_WAITOK | M_ZERO);
	pdev->dev.dma_priv = priv;

	FUNC5(&priv->lock, "lkpi-priv-dma", NULL, MTX_DEF);

	FUNC6(&priv->ptree);

	/* create a default DMA tag */
	error = FUNC2(&pdev->dev, FUNC0(64));
	if (error) {
		FUNC4(&priv->lock);
		FUNC1(priv, M_DEVBUF);
		pdev->dev.dma_priv = NULL;
	}
	return (error);
}