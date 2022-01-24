#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ctl_softc {int /*<<< orphan*/  ctl_lock; struct ctl_port** ctl_ports; int /*<<< orphan*/  port_list; int /*<<< orphan*/  ctl_port_mask; int /*<<< orphan*/  num_ports; int /*<<< orphan*/  port_max; int /*<<< orphan*/  port_min; } ;
struct TYPE_3__ {int item; } ;
struct ctl_port {int targ_port; int max_initiators; TYPE_2__* frontend; int /*<<< orphan*/  port_lock; TYPE_1__ stats; int /*<<< orphan*/ * options; void* ctl_pool_ref; int /*<<< orphan*/ * wwpn_iid; scalar_t__ num_requested_ctl_io; int /*<<< orphan*/  port_name; struct ctl_softc* ctl_softc; } ;
struct TYPE_4__ {int /*<<< orphan*/  port_list; } ;

/* Variables and functions */
 int CTL_MAX_INIT_PER_PORT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_CTL ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 struct ctl_port* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ctl_port*,struct ctl_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ctl_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ctl_port*,int /*<<< orphan*/ ) ; 
 struct ctl_port* FUNC5 (struct ctl_port*,int /*<<< orphan*/ ) ; 
 struct ctl_softc* control_softc ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ctl_softc*,int /*<<< orphan*/ ,scalar_t__,void**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fe_links ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/ * FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ) ; 

int
FUNC16(struct ctl_port *port)
{
	struct ctl_softc *softc = control_softc;
	struct ctl_port *tport, *nport;
	void *pool;
	int port_num;
	int retval;

	FUNC0(softc != NULL, ("CTL is not initialized"));
	port->ctl_softc = softc;

	FUNC13(&softc->ctl_lock);
	if (port->targ_port >= 0)
		port_num = port->targ_port;
	else
		port_num = FUNC7(softc->ctl_port_mask,
		    softc->port_min, softc->port_max);
	if ((port_num < 0) ||
	    (FUNC9(softc->ctl_port_mask, port_num) < 0)) {
		FUNC14(&softc->ctl_lock);
		return (1);
	}
	softc->num_ports++;
	FUNC14(&softc->ctl_lock);

	/*
	 * Initialize the initiator and portname mappings
	 */
	port->max_initiators = CTL_MAX_INIT_PER_PORT;
	port->wwpn_iid = FUNC11(sizeof(*port->wwpn_iid) * port->max_initiators,
	    M_CTL, M_NOWAIT | M_ZERO);
	if (port->wwpn_iid == NULL) {
		retval = ENOMEM;
		goto error;
	}

	/*
	 * We add 20 to whatever the caller requests, so he doesn't get
	 * burned by queueing things back to the pending sense queue.  In
	 * theory, there should probably only be one outstanding item, at
	 * most, on the pending sense queue for a LUN.  We'll clear the
	 * pending sense queue on the next command, whether or not it is
	 * a REQUEST SENSE.
	 */
	retval = FUNC8(softc, port->port_name,
				 port->num_requested_ctl_io + 20, &pool);
	if (retval != 0) {
		FUNC10(port->wwpn_iid, M_CTL);
error:
		port->targ_port = -1;
		FUNC13(&softc->ctl_lock);
		FUNC6(softc->ctl_port_mask, port_num);
		FUNC14(&softc->ctl_lock);
		return (retval);
	}
	port->targ_port = port_num;
	port->ctl_pool_ref = pool;
	if (port->options == NULL)
		port->options = FUNC15(0);
	port->stats.item = port_num;
	FUNC12(&port->port_lock, "CTL port", NULL, MTX_DEF);

	FUNC13(&softc->ctl_lock);
	FUNC4(&port->frontend->port_list, port, fe_links);
	for (tport = NULL, nport = FUNC1(&softc->port_list);
	    nport != NULL && nport->targ_port < port_num;
	    tport = nport, nport = FUNC5(tport, links)) {
	}
	if (tport)
		FUNC2(&softc->port_list, tport, port, links);
	else
		FUNC3(&softc->port_list, port, links);
	softc->ctl_ports[port->targ_port] = port;
	FUNC14(&softc->ctl_lock);

	return (retval);
}