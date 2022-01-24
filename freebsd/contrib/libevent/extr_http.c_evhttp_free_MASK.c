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
struct evhttp_server_alias {struct evhttp_server_alias* alias; int /*<<< orphan*/  aliases; struct evhttp_server_alias* vhost_pattern; int /*<<< orphan*/  virtualhosts; struct evhttp_server_alias* what; int /*<<< orphan*/  callbacks; int /*<<< orphan*/  connections; int /*<<< orphan*/  listener; int /*<<< orphan*/  sockets; } ;
struct evhttp_connection {int dummy; } ;
struct evhttp_cb {struct evhttp_cb* alias; int /*<<< orphan*/  aliases; struct evhttp_cb* vhost_pattern; int /*<<< orphan*/  virtualhosts; struct evhttp_cb* what; int /*<<< orphan*/  callbacks; int /*<<< orphan*/  connections; int /*<<< orphan*/  listener; int /*<<< orphan*/  sockets; } ;
struct evhttp_bound_socket {struct evhttp_bound_socket* alias; int /*<<< orphan*/  aliases; struct evhttp_bound_socket* vhost_pattern; int /*<<< orphan*/  virtualhosts; struct evhttp_bound_socket* what; int /*<<< orphan*/  callbacks; int /*<<< orphan*/  connections; int /*<<< orphan*/  listener; int /*<<< orphan*/  sockets; } ;
struct evhttp {struct evhttp* alias; int /*<<< orphan*/  aliases; struct evhttp* vhost_pattern; int /*<<< orphan*/  virtualhosts; struct evhttp* what; int /*<<< orphan*/  callbacks; int /*<<< orphan*/  connections; int /*<<< orphan*/  listener; int /*<<< orphan*/  sockets; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct evhttp_server_alias*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp_server_alias*) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  next_vhost ; 

void
FUNC5(struct evhttp* http)
{
	struct evhttp_cb *http_cb;
	struct evhttp_connection *evcon;
	struct evhttp_bound_socket *bound;
	struct evhttp* vhost;
	struct evhttp_server_alias *alias;

	/* Remove the accepting part */
	while ((bound = FUNC0(&http->sockets)) != NULL) {
		FUNC1(&http->sockets, bound, next);

		FUNC2(bound->listener);

		FUNC4(bound);
	}

	while ((evcon = FUNC0(&http->connections)) != NULL) {
		/* evhttp_connection_free removes the connection */
		FUNC3(evcon);
	}

	while ((http_cb = FUNC0(&http->callbacks)) != NULL) {
		FUNC1(&http->callbacks, http_cb, next);
		FUNC4(http_cb->what);
		FUNC4(http_cb);
	}

	while ((vhost = FUNC0(&http->virtualhosts)) != NULL) {
		FUNC1(&http->virtualhosts, vhost, next_vhost);

		FUNC5(vhost);
	}

	if (http->vhost_pattern != NULL)
		FUNC4(http->vhost_pattern);

	while ((alias = FUNC0(&http->aliases)) != NULL) {
		FUNC1(&http->aliases, alias, next);
		FUNC4(alias->alias);
		FUNC4(alias);
	}

	FUNC4(http);
}