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
struct ena_intr_moder_entry {int dummy; } ;
struct ena_com_dev {int /*<<< orphan*/  intr_moder_tbl; int /*<<< orphan*/  dmadev; } ;

/* Variables and functions */
 int ENA_COM_NO_MEM ; 
 int ENA_INTR_MAX_NUM_OF_LEVELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_com_dev*) ; 

__attribute__((used)) static int FUNC2(struct ena_com_dev *ena_dev)
{
	size_t size;

	size = sizeof(struct ena_intr_moder_entry) * ENA_INTR_MAX_NUM_OF_LEVELS;

	ena_dev->intr_moder_tbl = FUNC0(ena_dev->dmadev, size);
	if (!ena_dev->intr_moder_tbl)
		return ENA_COM_NO_MEM;

	FUNC1(ena_dev);

	return 0;
}