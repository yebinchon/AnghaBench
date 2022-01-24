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
typedef  int /*<<< orphan*/  sa_handle_t ;
typedef  int /*<<< orphan*/  sa_attr_type_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

int
FUNC4(objset_t *osp, uint64_t obj, char *buf, int len)
{
	sa_attr_type_t *sa_table;
	sa_handle_t *hdl;
	dmu_buf_t *db;
	int error;

	error = FUNC3(osp, &sa_table);
	if (error != 0)
		return (error);

	error = FUNC0(osp, obj, &hdl, &db, FTAG);
	if (error != 0)
		return (error);

	error = FUNC1(osp, obj, hdl, sa_table, buf, len);

	FUNC2(hdl, db, FTAG);
	return (error);
}