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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct regional {int dummy; } ;
struct TYPE_2__ {struct local_zone* key; } ;
struct local_zone {int type; size_t namelen; int namelabs; int /*<<< orphan*/  parent; int /*<<< orphan*/  lock; int /*<<< orphan*/  data; int /*<<< orphan*/  region; int /*<<< orphan*/ * name; int /*<<< orphan*/  dclass; TYPE_1__ node; } ;
typedef  int /*<<< orphan*/  rbnode_type ;
typedef  enum localzone_type { ____Placeholder_localzone_type } localzone_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct local_zone*) ; 
 int /*<<< orphan*/  local_data_cmp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static struct local_zone*
FUNC6(uint8_t* nm, size_t len, int labs, 
	enum localzone_type t, uint16_t dclass)
{
	struct local_zone* z = (struct local_zone*)FUNC0(1, sizeof(*z));
	if(!z) {
		return NULL;
	}
	z->node.key = z;
	z->dclass = dclass;
	z->type = t;
	z->name = nm;
	z->namelen = len;
	z->namelabs = labs;
	FUNC3(&z->lock);
	z->region = FUNC5(sizeof(struct regional));
	if(!z->region) {
		FUNC1(z);
		return NULL;
	}
	FUNC4(&z->data, &local_data_cmp);
	FUNC2(&z->lock, &z->parent, sizeof(*z)-sizeof(rbnode_type));
	/* also the zones->lock protects node, parent, name*, class */
	return z;
}