#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int name_len; int /*<<< orphan*/  data; int /*<<< orphan*/  wwpn; int /*<<< orphan*/  in_use; } ;
struct TYPE_6__ {scalar_t__ targ_port; int initid; } ;
struct TYPE_7__ {TYPE_1__ nexus; int /*<<< orphan*/  msg_type; } ;
union ctl_ha_msg {TYPE_4__ iid; TYPE_2__ hdr; } ;
struct ctl_softc {scalar_t__ port_min; scalar_t__ port_max; scalar_t__ ha_link; int /*<<< orphan*/  ctl_lock; } ;
struct ctl_port {scalar_t__ targ_port; TYPE_3__* wwpn_iid; struct ctl_softc* ctl_softc; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; int /*<<< orphan*/  wwpn; int /*<<< orphan*/  in_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_HA_CHAN_CTL ; 
 scalar_t__ CTL_HA_LINK_ONLINE ; 
 int /*<<< orphan*/  CTL_MSG_IID_SYNC ; 
 int /*<<< orphan*/  M_CTL ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union ctl_ha_msg*,int /*<<< orphan*/ ) ; 
 union ctl_ha_msg* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(struct ctl_port *port, int iid)
{
	struct ctl_softc *softc = port->ctl_softc;
	union ctl_ha_msg *msg;
	int i, l;

	if (port->targ_port < softc->port_min ||
	    port->targ_port >= softc->port_max ||
	    softc->ha_link != CTL_HA_LINK_ONLINE)
		return;
	FUNC4(&softc->ctl_lock);
	i = sizeof(msg->iid);
	l = 0;
	if (port->wwpn_iid[iid].name)
		l = FUNC7(port->wwpn_iid[iid].name) + 1;
	i += l;
	msg = FUNC3(i, M_CTL, M_NOWAIT);
	if (msg == NULL) {
		FUNC5(&softc->ctl_lock);
		return;
	}
	FUNC0(&msg->iid, sizeof(msg->iid));
	msg->hdr.msg_type = CTL_MSG_IID_SYNC;
	msg->hdr.nexus.targ_port = port->targ_port;
	msg->hdr.nexus.initid = iid;
	msg->iid.in_use = port->wwpn_iid[iid].in_use;
	msg->iid.name_len = l;
	msg->iid.wwpn = port->wwpn_iid[iid].wwpn;
	if (port->wwpn_iid[iid].name)
		FUNC6(msg->iid.data, port->wwpn_iid[iid].name, l);
	FUNC5(&softc->ctl_lock);
	FUNC1(CTL_HA_CHAN_CTL, &msg->iid, i, M_NOWAIT);
	FUNC2(msg, M_CTL);
}