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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct local_zones {int /*<<< orphan*/  ztree; } ;
struct local_zone {int /*<<< orphan*/  lock; int /*<<< orphan*/  parent; int /*<<< orphan*/  node; } ;
typedef  enum localzone_type { ____Placeholder_localzone_type } localzone_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct local_zone* FUNC1 (int /*<<< orphan*/ *,size_t,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct local_zone*) ; 
 int /*<<< orphan*/  FUNC3 (struct local_zones*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct local_zone*,int /*<<< orphan*/ ,struct local_zone*) ; 

struct local_zone* FUNC9(struct local_zones* zones,
	uint8_t* name, size_t len, int labs, uint16_t dclass,
	enum localzone_type tp)
{
	/* create */
	struct local_zone* z = FUNC1(name, len, labs, tp, dclass);
	if(!z) {
		FUNC0(name);
		return NULL;
	}
	FUNC5(&z->lock);

	/* find the closest parent */
	z->parent = FUNC3(zones, name, len, labs, dclass);

	/* insert into the tree */
	if(!FUNC7(&zones->ztree, &z->node)) {
		/* duplicate entry! */
		FUNC4(&z->lock);
		FUNC2(z);
		FUNC6("internal: duplicate entry in local_zones_add_zone");
		return NULL;
	}

	/* set parent pointers right */
	FUNC8(z, z->parent, z);

	FUNC4(&z->lock);
	return z;
}