#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct packet {int /*<<< orphan*/  client_addr; TYPE_4__* interface; TYPE_1__* raw; } ;
struct iaddrlist {int /*<<< orphan*/  addr; struct iaddrlist* next; } ;
struct TYPE_8__ {TYPE_3__* client; } ;
struct TYPE_7__ {TYPE_2__* config; } ;
struct TYPE_6__ {struct iaddrlist* reject_list; } ;
struct TYPE_5__ {scalar_t__ op; } ;

/* Variables and functions */
 scalar_t__ BOOTREPLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct packet*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct packet *packet)
{
	struct iaddrlist *ap;

	if (packet->raw->op != BOOTREPLY)
		return;

	/* If there's a reject list, make sure this packet's sender isn't
	   on it. */
	for (ap = packet->interface->client->config->reject_list;
	    ap; ap = ap->next) {
		if (FUNC0(packet->client_addr, ap->addr)) {
			FUNC2("BOOTREPLY from %s rejected.", FUNC3(ap->addr));
			return;
		}
	}
	FUNC1(packet);
}