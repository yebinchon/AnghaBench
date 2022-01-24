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
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ do_debug ; 
 int FUNC2 (struct ssh*,struct ssh*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct ssh *client, struct ssh *server)
{
	int r = 0;

	while (!server->kex->done || !client->kex->done) {
		if ((r = FUNC2(server, client)) != 0) {
			FUNC1("do_send_and_receive S2C: %s", FUNC4(r));
			break;
		}
		if ((r = FUNC2(client, server)) != 0) {
			FUNC1("do_send_and_receive C2S: %s", FUNC4(r));
			break;
		}
	}
	if (do_debug)
		FUNC3("done: %s\n", FUNC4(r));
	FUNC0(r, 0);
	FUNC0(server->kex->done, 1);
	FUNC0(client->kex->done, 1);
}