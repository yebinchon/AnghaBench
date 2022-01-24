#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * db_data; } ;
struct TYPE_7__ {TYPE_1__ db; TYPE_3__* db_buf; int /*<<< orphan*/  db_mtx; } ;
typedef  TYPE_2__ dmu_buf_impl_t ;
struct TYPE_8__ {int /*<<< orphan*/ * b_data; } ;
typedef  TYPE_3__ arc_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(dmu_buf_impl_t *db, arc_buf_t *buf)
{
	FUNC0(FUNC1(&db->db_mtx));
	FUNC0(buf != NULL);

	db->db_buf = buf;
	FUNC0(buf->b_data != NULL);
	db->db.db_data = buf->b_data;
}