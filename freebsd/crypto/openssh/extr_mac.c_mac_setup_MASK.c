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
struct sshmac {int dummy; } ;
struct macalg {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int SSH_ERR_INVALID_ARGUMENT ; 
 int FUNC0 (struct sshmac*,struct macalg const*) ; 
 struct macalg* macs ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *) ; 

int
FUNC2(struct sshmac *mac, char *name)
{
	const struct macalg *m;

	for (m = macs; m->name != NULL; m++) {
		if (FUNC1(name, m->name) != 0)
			continue;
		if (mac != NULL)
			return FUNC0(mac, m);
		return 0;
	}
	return SSH_ERR_INVALID_ARGUMENT;
}