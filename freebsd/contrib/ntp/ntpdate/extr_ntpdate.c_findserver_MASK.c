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
struct server {scalar_t__ event_time; struct server* next_server; int /*<<< orphan*/  srcadr; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ NTP_PORT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  complete_servers ; 
 struct server* FUNC4 (int) ; 
 scalar_t__ sys_numservers ; 
 struct server* sys_servers ; 
 int /*<<< orphan*/  FUNC5 (struct server*) ; 

__attribute__((used)) static struct server *
FUNC6(
	sockaddr_u *addr
	)
{
	struct server *server;
	struct server *mc_server;

	mc_server = NULL;
	if (FUNC3(addr) != NTP_PORT)
		return 0;

	for (server = sys_servers; server != NULL;
	     server = server->next_server) {
		if (FUNC2(addr, &server->srcadr))
			return server;

		if (FUNC0(addr) == FUNC0(&server->srcadr)) {
			if (FUNC1(&server->srcadr))
				mc_server = server;
		}
	}

	if (mc_server != NULL) {

		struct server *sp;

		if (mc_server->event_time != 0) {
			mc_server->event_time = 0;
			complete_servers++;
		}

		server = FUNC4(sizeof(*server));

		server->srcadr = *addr;

		server->event_time = ++sys_numservers;

		for (sp = sys_servers; sp->next_server != NULL;
		     sp = sp->next_server)
			/* empty */;
		sp->next_server = server;
		FUNC5(server);
	}
	return NULL;
}