#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct queued_listenaddr {struct queued_listenaddr* rdomain; struct queued_listenaddr* addr; int /*<<< orphan*/  port; } ;
struct TYPE_4__ {scalar_t__ num_ports; int address_family; size_t num_queued_listens; struct queued_listenaddr* queued_listen_addrs; int /*<<< orphan*/ * ports; } ;
typedef  TYPE_1__ ServerOptions ;

/* Variables and functions */
 int AF_UNSPEC ; 
 int /*<<< orphan*/  SSH_DEFAULT_PORT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct queued_listenaddr*,struct queued_listenaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct queued_listenaddr*) ; 

__attribute__((used)) static void
FUNC2(ServerOptions *options)
{
	u_int i;
	struct queued_listenaddr *qla;

	if (options->num_ports == 0)
		options->ports[options->num_ports++] = SSH_DEFAULT_PORT;
	if (options->address_family == -1)
		options->address_family = AF_UNSPEC;

	for (i = 0; i < options->num_queued_listens; i++) {
		qla = &options->queued_listen_addrs[i];
		FUNC0(options, qla->addr, qla->rdomain, qla->port);
		FUNC1(qla->addr);
		FUNC1(qla->rdomain);
	}
	FUNC1(options->queued_listen_addrs);
	options->queued_listen_addrs = NULL;
	options->num_queued_listens = 0;
}