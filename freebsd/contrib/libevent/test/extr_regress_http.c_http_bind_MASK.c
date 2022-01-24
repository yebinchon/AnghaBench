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
struct evhttp_bound_socket {int dummy; } ;
struct evhttp {int dummy; } ;
typedef  scalar_t__ ev_uint16_t ;

/* Variables and functions */
 int HTTP_BIND_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct evhttp_bound_socket* FUNC1 (struct evhttp*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct evhttp_bound_socket*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct evhttp *myhttp, ev_uint16_t *pport, int mask)
{
	int port;
	struct evhttp_bound_socket *sock;
	int ipv6 = mask & HTTP_BIND_IPV6;

	if (ipv6)
		sock = FUNC1(myhttp, "::1", *pport);
	else
		sock = FUNC1(myhttp, "127.0.0.1", *pport);

	if (sock == NULL) {
		if (ipv6)
			return -1;
		else
			FUNC0(1, "Could not start web server");
	}

	port = FUNC3(FUNC2(sock));
	if (port < 0)
		return -1;
	*pport = (ev_uint16_t) port;

	return 0;
}