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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct event_base {int dummy; } ;
struct evdns_server_port {int dummy; } ;
typedef  int /*<<< orphan*/  my_addr ;
typedef  scalar_t__ evutil_socket_t ;
typedef  int /*<<< orphan*/  evdns_request_callback_fn_type ;
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC0 (scalar_t__,struct sockaddr*,int) ; 
 struct evdns_server_port* FUNC1 (struct event_base*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

struct evdns_server_port *
FUNC10(struct event_base *base,
    ev_uint16_t *portnum,
    evutil_socket_t *psock,
    evdns_request_callback_fn_type cb,
    void *arg)
{
	struct evdns_server_port *port = NULL;
	evutil_socket_t sock;
	struct sockaddr_in my_addr;

	sock = FUNC8(AF_INET, SOCK_DGRAM, 0);
	if (sock < 0) {
		FUNC9("socket");
	}

	FUNC3(sock);

	FUNC6(&my_addr, 0, sizeof(my_addr));
	my_addr.sin_family = AF_INET;
	my_addr.sin_port = FUNC5(*portnum);
	my_addr.sin_addr.s_addr = FUNC4(0x7f000001UL);
	if (FUNC0(sock, (struct sockaddr*)&my_addr, sizeof(my_addr)) < 0) {
		FUNC2(sock);
		FUNC9("bind");
	}
	port = FUNC1(base, sock, 0, cb, arg);
	if (!*portnum)
		*portnum = FUNC7(sock);
	if (psock)
		*psock = sock;

	return port;
end:
	return NULL;
}