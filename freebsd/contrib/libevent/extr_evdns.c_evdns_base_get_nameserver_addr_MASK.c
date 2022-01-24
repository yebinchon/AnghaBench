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
struct sockaddr {int dummy; } ;
struct nameserver {scalar_t__ addrlen; int /*<<< orphan*/  address; struct nameserver* next; } ;
struct evdns_base {struct nameserver* server_head; } ;
typedef  scalar_t__ ev_socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr*,int /*<<< orphan*/ *,scalar_t__) ; 

int
FUNC3(struct evdns_base *base, int idx,
    struct sockaddr *sa, ev_socklen_t len)
{
	int result = -1;
	int i;
	struct nameserver *server;
	FUNC0(base);
	server = base->server_head;
	for (i = 0; i < idx && server; ++i, server = server->next) {
		if (server->next == base->server_head)
			goto done;
	}
	if (! server)
		goto done;

	if (server->addrlen > len) {
		result = (int) server->addrlen;
		goto done;
	}

	FUNC2(sa, &server->address, server->addrlen);
	result = (int) server->addrlen;
done:
	FUNC1(base);
	return result;
}