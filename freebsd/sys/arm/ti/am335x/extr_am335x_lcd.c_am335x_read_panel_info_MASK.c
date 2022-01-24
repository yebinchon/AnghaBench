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
struct panel_info {int /*<<< orphan*/  sync_ctrl; int /*<<< orphan*/  sync_edge; int /*<<< orphan*/  fdd; int /*<<< orphan*/  bpp; int /*<<< orphan*/  dma_burst_sz; int /*<<< orphan*/  ac_bias_intrpt; int /*<<< orphan*/  ac_bias; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,char*) ; 

__attribute__((used)) static int
FUNC2(device_t dev, phandle_t node, struct panel_info *panel)
{
	phandle_t panel_info_node;

	panel_info_node = FUNC1(node, "panel-info");
	if (panel_info_node == 0)
		return (-1);

	FUNC0(dev, panel_info_node,
	    "ac-bias", &panel->ac_bias);

	FUNC0(dev, panel_info_node,
	    "ac-bias-intrpt", &panel->ac_bias_intrpt);

	FUNC0(dev, panel_info_node,
	    "dma-burst-sz", &panel->dma_burst_sz);

	FUNC0(dev, panel_info_node,
	    "bpp", &panel->bpp);

	FUNC0(dev, panel_info_node,
	    "fdd", &panel->fdd);

	FUNC0(dev, panel_info_node,
	    "sync-edge", &panel->sync_edge);

	FUNC0(dev, panel_info_node,
	    "sync-ctrl", &panel->sync_ctrl);

	return (0);
}