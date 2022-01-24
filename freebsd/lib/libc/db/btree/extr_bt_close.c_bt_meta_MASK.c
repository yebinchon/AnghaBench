#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  nrecs; int /*<<< orphan*/  free; int /*<<< orphan*/  psize; int /*<<< orphan*/  version; int /*<<< orphan*/  magic; } ;
struct TYPE_6__ {int /*<<< orphan*/  bt_mp; int /*<<< orphan*/  bt_nrecs; int /*<<< orphan*/  bt_free; int /*<<< orphan*/  bt_psize; } ;
typedef  TYPE_1__ BTREE ;
typedef  TYPE_2__ BTMETA ;

/* Variables and functions */
 int /*<<< orphan*/  BTREEMAGIC ; 
 int /*<<< orphan*/  BTREEVERSION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPOOL_DIRTY ; 
 int /*<<< orphan*/  P_META ; 
 int RET_ERROR ; 
 int RET_SUCCESS ; 
 int /*<<< orphan*/  SAVEMETA ; 
 int /*<<< orphan*/  FUNC1 (void*,TYPE_2__*,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(BTREE *t)
{
	BTMETA m;
	void *p;

	if ((p = FUNC2(t->bt_mp, P_META, 0)) == NULL)
		return (RET_ERROR);

	/* Fill in metadata. */
	m.magic = BTREEMAGIC;
	m.version = BTREEVERSION;
	m.psize = t->bt_psize;
	m.free = t->bt_free;
	m.nrecs = t->bt_nrecs;
	m.flags = FUNC0(t, SAVEMETA);

	FUNC1(p, &m, sizeof(BTMETA));
	FUNC3(t->bt_mp, p, MPOOL_DIRTY);
	return (RET_SUCCESS);
}