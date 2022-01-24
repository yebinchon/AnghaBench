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
struct local_zones {int /*<<< orphan*/  lock; int /*<<< orphan*/  ztree; } ;
struct local_zone {int /*<<< orphan*/  lock; int /*<<< orphan*/  node; } ;
typedef  enum localzone_type { ____Placeholder_localzone_type } localzone_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct local_zone* FUNC2 (int /*<<< orphan*/ *,size_t,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct local_zone*) ; 
 struct local_zone* FUNC4 (struct local_zones*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct local_zone*
FUNC10(struct local_zones* zones, uint8_t* nm, size_t len, 
	int labs, enum localzone_type t, uint16_t c)
{
	struct local_zone* z = FUNC2(nm, len, labs, t, c);
	if(!z) {
		FUNC1(nm);
		FUNC7("out of memory");
		return NULL;
	}

	/* add to rbtree */
	FUNC6(&zones->lock);
	FUNC6(&z->lock);
	if(!FUNC9(&zones->ztree, &z->node)) {
		struct local_zone* oldz;
		char str[256];
		FUNC0(nm, str);
		FUNC8("duplicate local-zone %s", str);
		FUNC5(&z->lock);
		/* save zone name locally before deallocation,
		 * otherwise, nm is gone if we zone_delete now. */
		oldz = z;
		/* find the correct zone, so not an error for duplicate */
		z = FUNC4(zones, nm, len, labs, c);
		FUNC6(&z->lock);
		FUNC5(&zones->lock);
		FUNC3(oldz);
		return z;
	}
	FUNC5(&zones->lock);
	return z;
}