#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfsvfs_t ;
struct TYPE_5__ {int /*<<< orphan*/ * vfs_data; } ;
typedef  TYPE_1__ vfs_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESRCH ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int
FUNC6(const char *dsname, zfsvfs_t **zfvp)
{
	objset_t *os;
	vfs_t *vfsp;
	int error;

	error = FUNC1(dsname, FTAG, &os);
	if (error != 0)
		return (error);
	error = FUNC3(os, &vfsp);
	FUNC2(os, FTAG);
	if (error != 0)
		return (error);

	error = FUNC4(vfsp, 0);
	FUNC5(vfsp);
	if (error != 0) {
		*zfvp = NULL;
		error = FUNC0(ESRCH);
	} else {
		*zfvp = vfsp->vfs_data;
	}
	return (error);
}