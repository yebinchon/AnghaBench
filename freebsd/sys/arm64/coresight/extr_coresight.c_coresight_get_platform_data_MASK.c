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
struct coresight_platform_data {int in_ports; int out_ports; int /*<<< orphan*/  endpoints; int /*<<< orphan*/  mtx_lock; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_CORESIGHT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct coresight_platform_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct coresight_platform_data*) ; 
 struct coresight_platform_data* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 

struct coresight_platform_data *
FUNC7(device_t dev)
{
	struct coresight_platform_data *pdata;
	phandle_t node;

	node = FUNC5(dev);

	pdata = FUNC3(sizeof(struct coresight_platform_data),
	    M_CORESIGHT, M_WAITOK | M_ZERO);
	FUNC4(&pdata->mtx_lock, "Coresight Platform Data", NULL, MTX_DEF);
	FUNC0(&pdata->endpoints);

	FUNC1(node, pdata);
	FUNC2(node, pdata);

	if (bootverbose)
		FUNC6("Total ports: in %d out %d\n",
		    pdata->in_ports, pdata->out_ports);

	return (pdata);
}