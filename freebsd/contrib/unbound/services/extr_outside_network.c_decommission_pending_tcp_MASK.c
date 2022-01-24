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
struct pending_tcp {int /*<<< orphan*/ * query; struct pending_tcp* next_free; TYPE_1__* c; } ;
struct outside_network {struct pending_tcp* tcp_free; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ssl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct outside_network*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct outside_network* outnet, 
	struct pending_tcp* pend)
{
	if(pend->c->ssl) {
#ifdef HAVE_SSL
		SSL_shutdown(pend->c->ssl);
		SSL_free(pend->c->ssl);
		pend->c->ssl = NULL;
#endif
	}
	FUNC2(pend->c);
	pend->next_free = outnet->tcp_free;
	outnet->tcp_free = pend;
	FUNC4(pend->query);
	pend->query = NULL;
	FUNC3(outnet);
}