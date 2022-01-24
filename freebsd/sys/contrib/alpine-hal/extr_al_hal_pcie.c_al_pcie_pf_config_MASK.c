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
struct al_pcie_port {int /*<<< orphan*/  port_id; } ;
struct al_pcie_pf_config_params {int /*<<< orphan*/  pf_num; struct al_pcie_port* pcie_port; } ;
typedef  struct al_pcie_pf {int /*<<< orphan*/  pf_num; struct al_pcie_port* pcie_port; } const al_pcie_pf ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct al_pcie_pf_config_params const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct al_pcie_port*) ; 
 int FUNC4 (struct al_pcie_pf_config_params const*,struct al_pcie_pf_config_params const*) ; 

int
FUNC5(
	struct al_pcie_pf *pcie_pf,
	const struct al_pcie_pf_config_params *params)
{
	struct al_pcie_port *pcie_port;
	int status = 0;

	FUNC0(pcie_pf);
	FUNC0(params);

	pcie_port = pcie_pf->pcie_port;

	if (!FUNC3(pcie_port)) {
		FUNC2("PCIe %d: port not enabled, cannot configure port\n", pcie_port->port_id);
		return -EINVAL;
	}

	FUNC1("PCIe %d: pf %d config\n", pcie_port->port_id, pcie_pf->pf_num);

	if (params)
		status = FUNC4(pcie_pf, params);
	if (status)
		goto done;

done:
	FUNC1("PCIe %d: pf %d config %s\n",
		pcie_port->port_id, pcie_pf->pf_num, status ? "failed" : "done");

	return status;
}