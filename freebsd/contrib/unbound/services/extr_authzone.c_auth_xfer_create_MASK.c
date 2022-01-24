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
struct auth_zones {int /*<<< orphan*/  xtree; } ;
struct auth_zone {int dummy; } ;
struct auth_xfer {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 struct auth_xfer* FUNC0 (struct auth_zone*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct auth_xfer*
FUNC3(struct auth_zones* az, struct auth_zone* z)
{
	struct auth_xfer* xfr;

	/* malloc it */
	xfr = FUNC0(z);
	if(!xfr) {
		FUNC1("malloc failure");
		return NULL;
	}
	/* insert in tree */
	(void)FUNC2(&az->xtree, &xfr->node);
	return xfr;
}