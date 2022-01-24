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
struct TYPE_4__ {int /*<<< orphan*/  dn_dbuf; int /*<<< orphan*/ * dn_bonus; int /*<<< orphan*/  dn_struct_rwlock; } ;
typedef  TYPE_1__ dnode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMU_BONUS_BLKID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(dnode_t *dn)
{
	FUNC0(FUNC1(&dn->dn_struct_rwlock));

	FUNC0(dn->dn_bonus == NULL);
	dn->dn_bonus = FUNC2(dn, 0, DMU_BONUS_BLKID, dn->dn_dbuf, NULL);
}