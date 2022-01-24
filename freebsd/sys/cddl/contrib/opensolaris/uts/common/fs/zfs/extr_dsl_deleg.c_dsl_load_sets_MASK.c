#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_8__ {int /*<<< orphan*/  za_name; } ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/  p_matched; int /*<<< orphan*/  p_setname; } ;
typedef  TYPE_2__ perm_set_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;
typedef  int /*<<< orphan*/  avl_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int ZFS_MAX_DELEG_NAME ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char,char,void*) ; 

__attribute__((used)) static int
FUNC11(objset_t *mos, uint64_t zapobj,
    char type, char checkflag, void *valp, avl_tree_t *avl)
{
	zap_cursor_t zc;
	zap_attribute_t za;
	perm_set_t *permnode;
	avl_index_t idx;
	uint64_t jumpobj;
	int error;
	char whokey[ZFS_MAX_DELEG_NAME];

	FUNC10(whokey, type, checkflag, valp);

	error = FUNC9(mos, zapobj, whokey, 8, 1, &jumpobj);
	if (error != 0)
		return (error);

	for (FUNC7(&zc, mos, jumpobj);
	    FUNC8(&zc, &za) == 0;
	    FUNC5(&zc)) {
		permnode = FUNC2(sizeof (perm_set_t), KM_SLEEP);
		(void) FUNC4(permnode->p_setname, za.za_name,
		    sizeof (permnode->p_setname));
		permnode->p_matched = B_FALSE;

		if (FUNC0(avl, permnode, &idx) == NULL) {
			FUNC1(avl, permnode, idx);
		} else {
			FUNC3(permnode, sizeof (perm_set_t));
		}
	}
	FUNC6(&zc);
	return (0);
}