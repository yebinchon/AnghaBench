#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  z_id; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_6__ {int /*<<< orphan*/  z_os; scalar_t__ z_norm; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  matchtype_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(zfsvfs_t *zfsvfs, znode_t *dzp, const char *name,
    matchtype_t mt, uint64_t *zoid)
{
	int error;

	if (zfsvfs->z_norm) {

		/*
		 * In the non-mixed case we only expect there would ever
		 * be one match, but we need to use the normalizing lookup.
		 */
		error = FUNC2(zfsvfs->z_os, dzp->z_id, name, 8, 1,
		    zoid, mt, NULL, 0, NULL);
	} else {
		error = FUNC1(zfsvfs->z_os, dzp->z_id, name, 8, 1, zoid);
	}
	*zoid = FUNC0(*zoid);

	return (error);
}