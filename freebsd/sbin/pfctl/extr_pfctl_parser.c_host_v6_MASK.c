#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int /*<<< orphan*/  sin6_scope_id; int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {TYPE_1__ a; } ;
struct TYPE_6__ {TYPE_2__ v; } ;
struct node_host {struct node_host* tail; int /*<<< orphan*/ * next; int /*<<< orphan*/  ifindex; TYPE_3__ addr; void* af; int /*<<< orphan*/ * ifname; } ;
struct addrinfo {scalar_t__ ai_addr; int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  ai_socktype; void* ai_family; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 void* AF_INET6 ; 
 int /*<<< orphan*/  AI_NUMERICHOST ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 struct node_host* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 scalar_t__ FUNC3 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct node_host*,int) ; 

struct node_host *
FUNC7(const char *s, int mask)
{
	struct addrinfo		 hints, *res;
	struct node_host	*h = NULL;

	FUNC5(&hints, 0, sizeof(hints));
	hints.ai_family = AF_INET6;
	hints.ai_socktype = SOCK_DGRAM; /*dummy*/
	hints.ai_flags = AI_NUMERICHOST;
	if (FUNC3(s, "0", &hints, &res) == 0) {
		h = FUNC0(1, sizeof(struct node_host));
		if (h == NULL)
			FUNC1(1, "address: calloc");
		h->ifname = NULL;
		h->af = AF_INET6;
		FUNC4(&h->addr.v.a.addr,
		    &((struct sockaddr_in6 *)res->ai_addr)->sin6_addr,
		    sizeof(h->addr.v.a.addr));
		h->ifindex =
		    ((struct sockaddr_in6 *)res->ai_addr)->sin6_scope_id;
		FUNC6(h, mask);
		FUNC2(res);
		h->next = NULL;
		h->tail = h;
	}

	return (h);
}