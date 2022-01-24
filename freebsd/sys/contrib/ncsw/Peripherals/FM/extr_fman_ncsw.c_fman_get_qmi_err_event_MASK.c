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
struct fman_qmi_regs {int /*<<< orphan*/  fmqm_eie; int /*<<< orphan*/  fmqm_eif; int /*<<< orphan*/  fmqm_eien; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

uint32_t FUNC2(struct fman_qmi_regs *qmi_rg)
{
	uint32_t	event, mask, force;

	event = FUNC0(&qmi_rg->fmqm_eie);
	mask = FUNC0(&qmi_rg->fmqm_eien);
	event &= mask;

	/* clear the forced events */
	force = FUNC0(&qmi_rg->fmqm_eif);
	if (force & event)
		FUNC1(force & ~event, &qmi_rg->fmqm_eif);
	/* clear the acknowledged events */
	FUNC1(event, &qmi_rg->fmqm_eie);
	return event;
}