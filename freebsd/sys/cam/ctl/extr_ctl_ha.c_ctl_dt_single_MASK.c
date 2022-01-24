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
typedef  int /*<<< orphan*/  wire_dt ;
struct ha_softc {int /*<<< orphan*/  ha_lock; int /*<<< orphan*/  ha_dts; } ;
struct ha_dt_msg_wire {scalar_t__ command; int /*<<< orphan*/  remote; int /*<<< orphan*/  local; int /*<<< orphan*/  size; } ;
struct ctl_ha_dt_req {scalar_t__ command; int /*<<< orphan*/  size; int /*<<< orphan*/  local; int /*<<< orphan*/ * callback; int /*<<< orphan*/  remote; } ;
typedef  int /*<<< orphan*/  ctl_ha_status ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_HA_CHAN_DATA ; 
 scalar_t__ CTL_HA_DT_CMD_READ ; 
 int /*<<< orphan*/  CTL_HA_STATUS_WAIT ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ctl_ha_dt_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ha_dt_msg_wire*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ha_dt_msg_wire*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ha_softc ha_softc ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

ctl_ha_status
FUNC5(struct ctl_ha_dt_req *req)
{
	struct ha_softc *softc = &ha_softc;
	struct ha_dt_msg_wire wire_dt;
	ctl_ha_status status;

	wire_dt.command = req->command;
	wire_dt.size = req->size;
	wire_dt.local = req->local;
	wire_dt.remote = req->remote;
	if (req->command == CTL_HA_DT_CMD_READ && req->callback != NULL) {
		FUNC3(&softc->ha_lock);
		FUNC0(&softc->ha_dts, req, links);
		FUNC4(&softc->ha_lock);
		FUNC1(CTL_HA_CHAN_DATA, &wire_dt, sizeof(wire_dt),
		    M_WAITOK);
		return (CTL_HA_STATUS_WAIT);
	}
	if (req->command == CTL_HA_DT_CMD_READ) {
		status = FUNC1(CTL_HA_CHAN_DATA, &wire_dt,
		    sizeof(wire_dt), M_WAITOK);
	} else {
		status = FUNC2(CTL_HA_CHAN_DATA, &wire_dt,
		    sizeof(wire_dt), req->local, req->size, M_WAITOK);
	}
	return (status);
}