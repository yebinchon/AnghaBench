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
struct pmc_op_configurelog {int pm_logfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIGURELOG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct pmc_op_configurelog*) ; 

int
FUNC1(int fd)
{
	struct pmc_op_configurelog cla;

	cla.pm_logfd = fd;
	if (FUNC0(CONFIGURELOG, &cla) < 0)
		return (-1);
	return (0);
}