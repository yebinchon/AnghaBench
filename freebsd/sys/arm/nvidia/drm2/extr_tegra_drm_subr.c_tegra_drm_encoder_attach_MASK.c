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
struct TYPE_2__ {int polled; } ;
struct tegra_drm_encoder {TYPE_1__ connector; int /*<<< orphan*/ * gpio_hpd; int /*<<< orphan*/ * ddc; int /*<<< orphan*/ * edid; int /*<<< orphan*/  dev; } ;
struct edid {int dummy; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  ddc ;

/* Variables and functions */
 int DRM_CONNECTOR_POLL_CONNECT ; 
 int DRM_CONNECTOR_POLL_DISCONNECT ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_OFWPROP ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,scalar_t__*,int) ; 
 int FUNC2 (scalar_t__,char*,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ **) ; 

int
FUNC6(struct tegra_drm_encoder *output, phandle_t node)
{
	int rv;
	phandle_t ddc;

	/* XXX parse output panel here */

	rv = FUNC2(node, "nvidia,edid",
	    (void **)&output->edid);

	/* EDID exist but have invalid size */
	if ((rv >= 0) && (rv != sizeof(struct edid))) {
		FUNC3(output->dev,
		    "Malformed \"nvidia,edid\" property\n");
		if (output->edid != NULL)
			FUNC4(output->edid, M_OFWPROP);
		return (ENXIO);
	}

	FUNC5(output->dev, node, "nvidia,hpd-gpio",
	    &output->gpio_hpd);
	ddc = 0;
	FUNC1(node, "nvidia,ddc-i2c-bus", &ddc, sizeof(ddc));
	if (ddc > 0)
		output->ddc = FUNC0(ddc);
	if ((output->edid == NULL) && (output->ddc == NULL))
		return (ENXIO);

	if (output->gpio_hpd != NULL) {
		output->connector.polled =
//		    DRM_CONNECTOR_POLL_HPD;
		    DRM_CONNECTOR_POLL_DISCONNECT |
		    DRM_CONNECTOR_POLL_CONNECT;
	}

	return (0);
}