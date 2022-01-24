#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  accept_baton; int /*<<< orphan*/  ctx; scalar_t__ (* accept_func ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  skt; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ serf_listener_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_socket_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

apr_status_t FUNC4(serf_listener_t *l)
{
    apr_status_t rv;
    apr_socket_t *in;
    apr_pool_t *p;
    /* THIS IS NOT OPTIMAL */
    FUNC0(&p, l->pool);

    rv = FUNC2(&in, l->skt, p);

    if (rv) {
        FUNC1(p);
        return rv;
    }

    rv = l->accept_func(l->ctx, l, l->accept_baton, in, p);

    if (rv) {
        FUNC1(p);
        return rv;
    }

    return rv;
}