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
struct local_zones {int /*<<< orphan*/  lock; int /*<<< orphan*/  ztree; } ;
struct TYPE_2__ {struct local_zone* key; } ;
struct local_zone {int /*<<< orphan*/  name; TYPE_1__ node; int /*<<< orphan*/  namelabs; int /*<<< orphan*/  namelen; int /*<<< orphan*/  dclass; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(struct local_zones* zones, const char* name)
{
	struct local_zone z;
	z.node.key = &z;
	z.dclass = LDNS_RR_CLASS_IN;
	if(!FUNC4(name, &z.name, &z.namelen, &z.namelabs)) {
		FUNC3("bad name %s", name);
		return 0;
	}
	FUNC1(&zones->lock);
	if(FUNC5(&zones->ztree, &z.node)) {
		FUNC2(&zones->lock);
		FUNC0(z.name);
		return 1;
	}
	FUNC2(&zones->lock);
	FUNC0(z.name);
	return 0;
}