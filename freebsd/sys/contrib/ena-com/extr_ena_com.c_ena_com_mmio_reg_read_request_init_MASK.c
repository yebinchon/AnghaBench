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
struct ena_com_mmio_read {int seq_num; int readless_supported; int /*<<< orphan*/  lock; TYPE_1__* read_resp; int /*<<< orphan*/  read_resp_mem_handle; int /*<<< orphan*/  read_resp_dma_addr; } ;
struct ena_com_dev {int /*<<< orphan*/  dmadev; struct ena_com_mmio_read mmio_read; } ;
struct TYPE_2__ {int req_id; } ;

/* Variables and functions */
 int ENA_COM_NO_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_com_dev*) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct ena_com_dev *ena_dev)
{
	struct ena_com_mmio_read *mmio_read = &ena_dev->mmio_read;

	FUNC2(mmio_read->lock);
	FUNC0(ena_dev->dmadev,
			       sizeof(*mmio_read->read_resp),
			       mmio_read->read_resp,
			       mmio_read->read_resp_dma_addr,
			       mmio_read->read_resp_mem_handle);
	if (FUNC4(!mmio_read->read_resp))
		goto err;

	FUNC3(ena_dev);

	mmio_read->read_resp->req_id = 0x0;
	mmio_read->seq_num = 0x0;
	mmio_read->readless_supported = true;

	return 0;

err:
		FUNC1(mmio_read->lock);
		return ENA_COM_NO_MEM;
}