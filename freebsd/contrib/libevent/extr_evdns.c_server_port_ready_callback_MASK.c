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
struct evdns_server_port {scalar_t__ choked; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_server_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_server_port*) ; 
 short EV_READ ; 
 short EV_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct evdns_server_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct evdns_server_port*) ; 

__attribute__((used)) static void
FUNC4(evutil_socket_t fd, short events, void *arg) {
	struct evdns_server_port *port = (struct evdns_server_port *) arg;
	(void) fd;

	FUNC0(port);
	if (events & EV_WRITE) {
		port->choked = 0;
		FUNC2(port);
	}
	if (events & EV_READ) {
		FUNC3(port);
	}
	FUNC1(port);
}