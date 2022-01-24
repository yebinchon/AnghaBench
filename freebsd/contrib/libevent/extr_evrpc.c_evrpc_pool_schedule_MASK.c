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
struct evrpc_request_wrapper {int dummy; } ;
struct evrpc_pool {int /*<<< orphan*/  requests; } ;
struct evhttp_connection {int dummy; } ;

/* Variables and functions */
 struct evrpc_request_wrapper* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct evrpc_request_wrapper*,int /*<<< orphan*/ ) ; 
 struct evhttp_connection* FUNC2 (struct evrpc_pool*) ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp_connection*,struct evrpc_request_wrapper*) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static void
FUNC4(struct evrpc_pool *pool)
{
	struct evrpc_request_wrapper *ctx = FUNC0(&pool->requests);
	struct evhttp_connection *evcon;

	/* if no requests are pending, we have no work */
	if (ctx == NULL)
		return;

	if ((evcon = FUNC2(pool)) != NULL) {
		FUNC1(&pool->requests, ctx, next);
		FUNC3(evcon, ctx);
	}
}