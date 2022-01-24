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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_4__ {int /*<<< orphan*/ * dn_dirty_link; } ;
typedef  TYPE_1__ dnode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int TXG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(objset_t *os, uint64_t object)
{
	dnode_t *dn;
	int error, i;

	error = FUNC1(os, object, FTAG, &dn);
	if (error) {
		return (error);
	}

	for (i = 0; i < TXG_SIZE; i++) {
		if (FUNC3(&dn->dn_dirty_link[i])) {
			break;
		}
	}
	FUNC2(dn, FTAG);
	if (i != TXG_SIZE) {
		FUNC4(FUNC0(os), 0);
	}

	return (0);
}