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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ q_depth; scalar_t__ head; } ;
struct ena_com_dev {scalar_t__ reg_bar; int /*<<< orphan*/  bus; TYPE_1__ aenq; } ;

/* Variables and functions */
 scalar_t__ ENA_REGS_AENQ_HEAD_DB_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

void FUNC2(struct ena_com_dev *ena_dev)
{
	u16 depth = ena_dev->aenq.q_depth;

	FUNC1(ena_dev->aenq.head != depth, "Invalid AENQ state\n");

	/* Init head_db to mark that all entries in the queue
	 * are initially available
	 */
	FUNC0(ena_dev->bus, depth, ena_dev->reg_bar + ENA_REGS_AENQ_HEAD_DB_OFF);
}