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
struct evrpc_base {struct evhttp* http_server; int /*<<< orphan*/  paused_requests; int /*<<< orphan*/  output_hooks; int /*<<< orphan*/  input_hooks; int /*<<< orphan*/  registered_rpcs; } ;
struct evhttp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct evrpc_base* FUNC2 (int,int) ; 

struct evrpc_base *
FUNC3(struct evhttp *http_server)
{
	struct evrpc_base* base = FUNC2(1, sizeof(struct evrpc_base));
	if (base == NULL)
		return (NULL);

	/* we rely on the tagging sub system */
	FUNC1();

	FUNC0(&base->registered_rpcs);
	FUNC0(&base->input_hooks);
	FUNC0(&base->output_hooks);

	FUNC0(&base->paused_requests);

	base->http_server = http_server;

	return (base);
}