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
struct ctl_softc {int /*<<< orphan*/  othersc_pool; } ;
struct ctl_port {struct ctl_port* port_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  port_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_HA_CHAN_CTL ; 
 scalar_t__ CTL_HA_STATUS_SUCCESS ; 
 int EIO ; 
 int /*<<< orphan*/  M_CTL ; 
 struct ctl_port* FUNC0 (int /*<<< orphan*/ *) ; 
 struct ctl_softc* control_softc ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ctl_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ctl_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ctl_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct ctl_port*,int /*<<< orphan*/ ) ; 
 TYPE_1__ ha_frontend ; 

__attribute__((used)) static int
FUNC7(void)
{
	struct ctl_softc *softc = control_softc;
	struct ctl_port *port;

	FUNC3(softc);
	if (FUNC1(CTL_HA_CHAN_CTL) != CTL_HA_STATUS_SUCCESS)
		return (EIO);
	if (FUNC2(softc) != CTL_HA_STATUS_SUCCESS)
		return (EIO);
	FUNC4(softc->othersc_pool);
	while ((port = FUNC0(&ha_frontend.port_list)) != NULL) {
		FUNC5(port);
		FUNC6(port->port_name, M_CTL);
		FUNC6(port, M_CTL);
	}
	return (0);
}