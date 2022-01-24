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
struct auth_zones {int /*<<< orphan*/  ztree; } ;
struct TYPE_2__ {struct auth_zone* key; } ;
struct auth_zone {size_t namelen; int /*<<< orphan*/  lock; TYPE_1__ node; int /*<<< orphan*/  name; int /*<<< orphan*/  data; int /*<<< orphan*/  namelabs; int /*<<< orphan*/  dclass; } ;
typedef  int /*<<< orphan*/  rbnode_type ;

/* Variables and functions */
 int /*<<< orphan*/  auth_data_cmp ; 
 int /*<<< orphan*/  FUNC0 (struct auth_zone*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct auth_zone*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 

struct auth_zone*
FUNC12(struct auth_zones* az, uint8_t* nm, size_t nmlen,
	uint16_t dclass)
{
	struct auth_zone* z = (struct auth_zone*)FUNC1(1, sizeof(*z));
	if(!z) {
		return NULL;
	}
	z->node.key = z;
	z->dclass = dclass;
	z->namelen = nmlen;
	z->namelabs = FUNC2(nm);
	z->name = FUNC9(nm, nmlen);
	if(!z->name) {
		FUNC3(z);
		return NULL;
	}
	FUNC10(&z->data, &auth_data_cmp);
	FUNC5(&z->lock);
	FUNC4(&z->lock, &z->name, sizeof(*z)-sizeof(rbnode_type));
	FUNC7(&z->lock);
	/* z lock protects all, except rbtree itself, which is az->lock */
	if(!FUNC11(&az->ztree, &z->node)) {
		FUNC6(&z->lock);
		FUNC0(z);
		FUNC8("duplicate auth zone");
		return NULL;
	}
	return z;
}