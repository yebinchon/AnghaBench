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
struct evdns_server_port {scalar_t__ refcnt; int closing; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_server_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_server_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct evdns_server_port*) ; 

void
FUNC3(struct evdns_server_port *port)
{
	FUNC0(port);
	if (--port->refcnt == 0) {
		FUNC1(port);
		FUNC2(port);
	} else {
		port->closing = 1;
	}
}