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
struct evhttp_bound_socket {struct evconnlistener* listener; } ;
struct evhttp {int /*<<< orphan*/  sockets; } ;
struct evconnlistener {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct evhttp_bound_socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  accept_socket_cb ; 
 int /*<<< orphan*/  FUNC1 (struct evconnlistener*,int /*<<< orphan*/ ,struct evhttp*) ; 
 struct evhttp_bound_socket* FUNC2 (int) ; 
 int /*<<< orphan*/  next ; 

struct evhttp_bound_socket *
FUNC3(struct evhttp *http, struct evconnlistener *listener)
{
	struct evhttp_bound_socket *bound;

	bound = FUNC2(sizeof(struct evhttp_bound_socket));
	if (bound == NULL)
		return (NULL);

	bound->listener = listener;
	FUNC0(&http->sockets, bound, next);

	FUNC1(listener, accept_socket_cb, http);
	return bound;
}