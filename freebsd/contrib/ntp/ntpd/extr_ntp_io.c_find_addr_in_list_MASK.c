#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct interface {int dummy; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;
struct TYPE_3__ {struct interface* ep; int /*<<< orphan*/  addr; struct TYPE_3__* link; } ;
typedef  TYPE_1__ remaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* remoteaddr_list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct interface *
FUNC3(
	sockaddr_u *addr
	)
{
	remaddr_t *entry;

	FUNC0(4, ("Searching for addr %s in list of addresses - ",
		    FUNC2(addr)));

	for (entry = remoteaddr_list;
	     entry != NULL;
	     entry = entry->link)
		if (FUNC1(&entry->addr, addr)) {
			FUNC0(4, ("FOUND\n"));
			return entry->ep;
		}

	FUNC0(4, ("NOT FOUND\n"));
	return NULL;
}