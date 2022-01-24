#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* os_dsl_dataset; int /*<<< orphan*/  os_phys_buf; } ;
typedef  TYPE_3__ objset_t ;
struct TYPE_11__ {int /*<<< orphan*/  db_buf; TYPE_2__* db_parent; TYPE_3__* db_objset; } ;
typedef  TYPE_4__ dmu_buf_impl_t ;
struct TYPE_9__ {int /*<<< orphan*/  db_buf; } ;
struct TYPE_8__ {int /*<<< orphan*/  ds_synced_link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(dmu_buf_impl_t *db)
{
	objset_t *os = db->db_objset;

	FUNC0(FUNC4(FUNC3(os)));
	FUNC0(FUNC2(os->os_phys_buf) ||
	    FUNC5(&os->os_dsl_dataset->ds_synced_link));
	FUNC0(db->db_parent == NULL || FUNC2(db->db_parent->db_buf));

	(void) FUNC1(db->db_buf, db);
}