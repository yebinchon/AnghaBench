#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ db_level; } ;
typedef  TYPE_1__ dmu_buf_impl_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_8__ {int /*<<< orphan*/  dn_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 TYPE_5__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

boolean_t
FUNC4(dmu_buf_impl_t *db)
{
	if (db->db_level > 0) {
		return (B_TRUE);
	} else {
		boolean_t is_metadata;

		FUNC1(db);
		is_metadata = FUNC3(FUNC0(db)->dn_type);
		FUNC2(db);

		return (is_metadata);
	}
}