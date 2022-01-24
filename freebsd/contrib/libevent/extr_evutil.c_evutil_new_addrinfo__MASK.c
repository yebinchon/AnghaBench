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
typedef  int /*<<< orphan*/  tmp ;
typedef  struct sockaddr {scalar_t__ ai_socktype; scalar_t__ ai_protocol; int ai_addrlen; int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  sa_family; int /*<<< orphan*/  ai_family; struct sockaddr const* ai_addr; struct sockaddr const* ai_next; } const sockaddr ;
typedef  struct evutil_addrinfo {scalar_t__ ai_socktype; scalar_t__ ai_protocol; int ai_addrlen; int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  sa_family; int /*<<< orphan*/  ai_family; struct evutil_addrinfo const* ai_addr; struct evutil_addrinfo const* ai_next; } const evutil_addrinfo ;
typedef  int ev_socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVUTIL_AI_LIBEVENT_ALLOCATED ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr const*) ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr const*,struct sockaddr const*,int) ; 
 struct sockaddr const* FUNC3 (int,int) ; 

struct evutil_addrinfo *
FUNC4(struct sockaddr *sa, ev_socklen_t socklen,
    const struct evutil_addrinfo *hints)
{
	struct evutil_addrinfo *res;
	FUNC0(hints);

	if (hints->ai_socktype == 0 && hints->ai_protocol == 0) {
		/* Indecisive user! Give them a UDP and a TCP. */
		struct evutil_addrinfo *r1, *r2;
		struct evutil_addrinfo tmp;
		FUNC2(&tmp, hints, sizeof(tmp));
		tmp.ai_socktype = SOCK_STREAM; tmp.ai_protocol = IPPROTO_TCP;
		r1 = FUNC4(sa, socklen, &tmp);
		if (!r1)
			return NULL;
		tmp.ai_socktype = SOCK_DGRAM; tmp.ai_protocol = IPPROTO_UDP;
		r2 = FUNC4(sa, socklen, &tmp);
		if (!r2) {
			FUNC1(r1);
			return NULL;
		}
		r1->ai_next = r2;
		return r1;
	}

	/* We're going to allocate extra space to hold the sockaddr. */
	res = FUNC3(1,sizeof(struct evutil_addrinfo)+socklen);
	if (!res)
		return NULL;
	res->ai_addr = (struct sockaddr*)
	    (((char*)res) + sizeof(struct evutil_addrinfo));
	FUNC2(res->ai_addr, sa, socklen);
	res->ai_addrlen = socklen;
	res->ai_family = sa->sa_family; /* Same or not? XXX */
	res->ai_flags = EVUTIL_AI_LIBEVENT_ALLOCATED;
	res->ai_socktype = hints->ai_socktype;
	res->ai_protocol = hints->ai_protocol;

	return res;
}