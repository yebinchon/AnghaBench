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
struct evrpc_pool {int timeout; struct event_base* base; int /*<<< orphan*/  output_hooks; int /*<<< orphan*/  input_hooks; int /*<<< orphan*/  paused_requests; int /*<<< orphan*/  requests; int /*<<< orphan*/  connections; } ;
struct event_base {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct evrpc_pool* FUNC1 (int,int) ; 

struct evrpc_pool *
FUNC2(struct event_base *base)
{
	struct evrpc_pool *pool = FUNC1(1, sizeof(struct evrpc_pool));
	if (pool == NULL)
		return (NULL);

	FUNC0(&pool->connections);
	FUNC0(&pool->requests);

	FUNC0(&pool->paused_requests);

	FUNC0(&pool->input_hooks);
	FUNC0(&pool->output_hooks);

	pool->base = base;
	pool->timeout = -1;

	return (pool);
}