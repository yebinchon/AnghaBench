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
struct auth_data {int /*<<< orphan*/  namelabs; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

int FUNC1(const void* z1, const void* z2)
{
	struct auth_data* a = (struct auth_data*)z1;
	struct auth_data* b = (struct auth_data*)z2;
	int m;
	/* canonical sort, because DNSSEC needs that */
	return FUNC0(a->name, a->namelabs, b->name,
		b->namelabs, &m);
}