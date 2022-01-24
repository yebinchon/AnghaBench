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
typedef  int /*<<< orphan*/  xref ;
struct endpoint {int reg; int slave; scalar_t__ dev_node; int /*<<< orphan*/  their_node; scalar_t__ my_node; } ;
struct coresight_platform_data {int /*<<< orphan*/  mtx_lock; int /*<<< orphan*/  endpoints; int /*<<< orphan*/  out_ports; int /*<<< orphan*/  in_ports; } ;
typedef  int /*<<< orphan*/  port_reg ;
typedef  scalar_t__ phandle_t ;
typedef  int pcell_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_CORESIGHT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,char*,scalar_t__*,int) ; 
 int FUNC2 (scalar_t__,char*,void**) ; 
 scalar_t__ FUNC3 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct endpoint*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 struct endpoint* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC14(phandle_t dev_node,
    struct coresight_platform_data *pdata)
{
	phandle_t node, child;
	pcell_t port_reg;
	phandle_t xref;
	char *name;
	int ret;
	phandle_t endpoint_child;
	struct endpoint *endp;

	child = FUNC10(dev_node, "ports");
	if (child)
		node = child;
	else
		node = dev_node;

	for (child = FUNC0(node); child != 0; child = FUNC5(child)) {
		ret = FUNC2(child, "name", (void **)&name);
		if (ret == -1)
			continue;

		if (FUNC12(name, "port") ||
		    FUNC13(name, "port@", 6)) {

			port_reg = -1;
			FUNC1(child, "reg", (void *)&port_reg, sizeof(port_reg));

			endpoint_child = FUNC10(child, "endpoint");
			if (endpoint_child) {
				if (FUNC1(endpoint_child, "remote-endpoint", &xref,
				    sizeof(xref)) == -1) {
					FUNC11("failed\n");
					continue;
				}
				endp = FUNC7(sizeof(struct endpoint), M_CORESIGHT,
				    M_WAITOK | M_ZERO);
				endp->my_node = endpoint_child;
				endp->their_node = FUNC4(xref);
				endp->dev_node = dev_node;
				endp->reg = port_reg;
				if (FUNC3(endpoint_child, "slave-mode") >= 0) {
					pdata->in_ports++;
					endp->slave = 1;
				} else {
					pdata->out_ports++;
				}

				FUNC8(&pdata->mtx_lock);
				FUNC6(&pdata->endpoints, endp, link);
				FUNC9(&pdata->mtx_lock);
			}
		}
	}

	return (0);
}