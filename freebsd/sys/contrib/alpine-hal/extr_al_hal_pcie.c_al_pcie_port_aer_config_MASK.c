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
struct al_pcie_port {int dummy; } ;
typedef  struct al_pcie_port al_pcie_aer_params ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct al_pcie_port*) ; 
 int FUNC1 (struct al_pcie_port*,int /*<<< orphan*/ ,struct al_pcie_port*) ; 

int FUNC2(
		struct al_pcie_port		*pcie_port,
		struct al_pcie_aer_params	*params)
{
	FUNC0(pcie_port);
	FUNC0(params);

	/**
	* For RC mode there's no PFs (neither PF handles),
	* therefore PF#0 is used
	* */
	return FUNC1(pcie_port, 0, params);
}