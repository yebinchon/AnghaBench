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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dnode_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  DNODE_FIND_HOLE ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC4(objset_t *os, uint64_t object, boolean_t hole, uint64_t *off)
{
	dnode_t *dn;
	int err;

	/*
	 * Sync any current changes before
	 * we go trundling through the block pointers.
	 */
	err = FUNC0(os, object);
	if (err) {
		return (err);
	}

	err = FUNC1(os, object, FTAG, &dn);
	if (err) {
		return (err);
	}

	err = FUNC2(dn, (hole ? DNODE_FIND_HOLE : 0), off, 1, 1, 0);
	FUNC3(dn, FTAG);

	return (err);
}