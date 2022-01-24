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
struct al_pcie_pf {int /*<<< orphan*/  pf_num; int /*<<< orphan*/  pcie_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct al_pcie_pf*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

unsigned int FUNC2(struct al_pcie_pf *pcie_pf)
{
	FUNC0(pcie_pf);

	return FUNC1(
			pcie_pf->pcie_port, pcie_pf->pf_num);
}