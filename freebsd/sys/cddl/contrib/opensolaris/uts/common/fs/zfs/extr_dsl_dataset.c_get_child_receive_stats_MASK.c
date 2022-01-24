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
typedef  int /*<<< orphan*/  recvname ;
struct TYPE_9__ {TYPE_1__* ds_dir; } ;
typedef  TYPE_2__ dsl_dataset_t ;
struct TYPE_8__ {int /*<<< orphan*/  dd_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  ZFS_MAX_DATASET_NAME_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (TYPE_2__*) ; 
 char* recv_clone_name ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (char*,char*,int) ; 

char *
FUNC6(dsl_dataset_t *ds)
{
	char recvname[ZFS_MAX_DATASET_NAME_LEN + 6];
	dsl_dataset_t *recv_ds;
	FUNC1(ds, recvname);
	if (FUNC5(recvname, "/", sizeof (recvname)) <
	    sizeof (recvname) &&
	    FUNC5(recvname, recv_clone_name, sizeof (recvname)) <
	    sizeof (recvname) &&
	    FUNC0(ds->ds_dir->dd_pool, recvname, FTAG,
	    &recv_ds)  == 0) {
		char *propval = FUNC3(recv_ds);
		FUNC2(recv_ds, FTAG);
		return (propval);
	}
	return (FUNC4(""));
}