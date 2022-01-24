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
struct ssh {TYPE_1__* kex; } ;
struct TYPE_2__ {int done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ do_debug ; 
 int FUNC1 (struct ssh*,struct ssh*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(struct ssh *client, struct ssh *server)
{
	int r = 0;

	while (!server->kex->done || !client->kex->done) {
		if (do_debug)
			FUNC2(" S:");
		if ((r = FUNC1(server, client)))
			break;
		if (do_debug)
			FUNC2(" C:");
		if ((r = FUNC1(client, server)))
			break;
	}
	if (do_debug)
		FUNC2("done: %s\n", FUNC3(r));
	FUNC0(r, 0);
	FUNC0(server->kex->done, 1);
	FUNC0(client->kex->done, 1);
}