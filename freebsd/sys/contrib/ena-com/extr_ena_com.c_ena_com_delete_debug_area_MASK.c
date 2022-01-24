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
struct ena_host_attribute {int /*<<< orphan*/ * debug_area_virt_addr; int /*<<< orphan*/  debug_area_dma_handle; int /*<<< orphan*/  debug_area_dma_addr; int /*<<< orphan*/  debug_area_size; } ;
struct ena_com_dev {int /*<<< orphan*/  dmadev; struct ena_host_attribute host_attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct ena_com_dev *ena_dev)
{
	struct ena_host_attribute *host_attr = &ena_dev->host_attr;

	if (host_attr->debug_area_virt_addr) {
		FUNC0(ena_dev->dmadev,
				      host_attr->debug_area_size,
				      host_attr->debug_area_virt_addr,
				      host_attr->debug_area_dma_addr,
				      host_attr->debug_area_dma_handle);
		host_attr->debug_area_virt_addr = NULL;
	}
}