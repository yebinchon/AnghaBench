#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int zv_volsize; int zv_volblocksize; int /*<<< orphan*/ * zv_objset; } ;
typedef  TYPE_1__ zvol_state_t ;
struct maparg {int ma_blks; TYPE_1__* ma_zv; } ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int EIO ; 
 int TRAVERSE_PRE ; 
 int TRAVERSE_PREFETCH_METADATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct maparg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  zvol_map_block ; 

__attribute__((used)) static int
FUNC5(zvol_state_t *zv)
{
	objset_t *os = zv->zv_objset;
	struct maparg	ma;
	int		err;

	ma.ma_zv = zv;
	ma.ma_blks = 0;
	FUNC4(zv);

	/* commit any in-flight changes before traversing the dataset */
	FUNC3(FUNC1(os), 0);
	err = FUNC2(FUNC0(os), 0,
	    TRAVERSE_PRE | TRAVERSE_PREFETCH_METADATA, zvol_map_block, &ma);
	if (err || ma.ma_blks != (zv->zv_volsize / zv->zv_volblocksize)) {
		FUNC4(zv);
		return (err ? err : EIO);
	}

	return (0);
}