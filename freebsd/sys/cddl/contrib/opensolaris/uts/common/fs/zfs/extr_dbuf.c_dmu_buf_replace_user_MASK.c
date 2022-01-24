#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void dmu_buf_user_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;
struct TYPE_3__ {void* db_user; int /*<<< orphan*/  db_mtx; } ;
typedef  TYPE_1__ dmu_buf_impl_t ;

/* Variables and functions */
 int /*<<< orphan*/  DBVU_NOT_EVICTING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void *
FUNC3(dmu_buf_t *db_fake, dmu_buf_user_t *old_user,
    dmu_buf_user_t *new_user)
{
	dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;

	FUNC1(&db->db_mtx);
	FUNC0(db, DBVU_NOT_EVICTING);
	if (db->db_user == old_user)
		db->db_user = new_user;
	else
		old_user = db->db_user;
	FUNC0(db, DBVU_NOT_EVICTING);
	FUNC2(&db->db_mtx);

	return (old_user);
}