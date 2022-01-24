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
struct pending {scalar_t__ id; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int 
FUNC2(const void* key1, const void* key2)
{
	struct pending *p1 = (struct pending*)key1;
	struct pending *p2 = (struct pending*)key2;
	if(p1->id < p2->id)
		return -1;
	if(p1->id > p2->id)
		return 1;
	FUNC0(p1->id == p2->id);
	return FUNC1(&p1->addr, p1->addrlen, &p2->addr, p2->addrlen);
}