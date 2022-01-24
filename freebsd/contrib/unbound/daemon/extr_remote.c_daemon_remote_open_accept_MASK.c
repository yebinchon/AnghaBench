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
struct worker {int dummy; } ;
struct listen_port {int /*<<< orphan*/  fd; struct listen_port* next; } ;
struct daemon_remote {struct worker* worker; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct daemon_remote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(struct daemon_remote* rc, 
	struct listen_port* ports, struct worker* worker)
{
	struct listen_port* p;
	rc->worker = worker;
	for(p = ports; p; p = p->next) {
		if(!FUNC0(rc, p->fd)) {
			FUNC1("could not create accept comm point");
			return 0;
		}
	}
	return 1;
}