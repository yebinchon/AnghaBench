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
struct comm_point {scalar_t__ type; TYPE_1__* tcp_parent; struct comm_point* tcp_free; int /*<<< orphan*/ * ssl; } ;
struct TYPE_2__ {struct comm_point* tcp_free; int /*<<< orphan*/  cur_tcp_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ comm_http ; 
 int /*<<< orphan*/  FUNC2 (struct comm_point*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct comm_point* c)
{
	FUNC4(c->type == comm_http);
	if(c->ssl) {
#ifdef HAVE_SSL
		SSL_shutdown(c->ssl);
		SSL_free(c->ssl);
		c->ssl = NULL;
#endif
	}
	FUNC2(c);
	if(c->tcp_parent) {
		c->tcp_parent->cur_tcp_count--;
		c->tcp_free = c->tcp_parent->tcp_free;
		c->tcp_parent->tcp_free = c;
		if(!c->tcp_free) {
			/* re-enable listening on accept socket */
			FUNC3(c->tcp_parent, -1, -1);
		}
	}
}