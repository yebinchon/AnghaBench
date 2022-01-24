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
struct evrpc_pool {int dummy; } ;
struct evhttp_connection {int dummy; } ;
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct evhttp_connection* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct evrpc_pool*,struct evhttp_connection*) ; 
 struct evrpc_pool* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct evrpc_pool *
FUNC4(ev_uint16_t port)
{
	struct evhttp_connection *evcon;
	struct evrpc_pool *pool;

	pool = FUNC3(NULL);
	FUNC0(pool != NULL);

	evcon = FUNC1("127.0.0.1", port);
	FUNC0(evcon != NULL);

	FUNC2(pool, evcon);

	return (pool);
}