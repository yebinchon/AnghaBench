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
typedef  int u32 ;
struct ena_com_dev {int intr_delay_resolution; int intr_moder_tx_interval; } ;

/* Variables and functions */
 int ENA_COM_FAULT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

int FUNC1(struct ena_com_dev *ena_dev,
						      u32 tx_coalesce_usecs)
{
	if (!ena_dev->intr_delay_resolution) {
		FUNC0("Illegal interrupt delay granularity value\n");
		return ENA_COM_FAULT;
	}

	ena_dev->intr_moder_tx_interval = tx_coalesce_usecs /
		ena_dev->intr_delay_resolution;

	return 0;
}