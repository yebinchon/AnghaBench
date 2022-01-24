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
typedef  int uint32_t ;
struct dtsec_regs {int /*<<< orphan*/  tmr_pevent; int /*<<< orphan*/  tmr_pemask; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

uint32_t FUNC2(struct dtsec_regs *regs)
{
	uint32_t event;

	event = FUNC0(&regs->tmr_pevent);
	event &= FUNC0(&regs->tmr_pemask);

	if (event)
		FUNC1(event, &regs->tmr_pevent);
	return event;
}