#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdev_t ;
struct TYPE_7__ {scalar_t__ spa_missing_tvds; int /*<<< orphan*/ * spa_root_vdev; } ;
typedef  TYPE_1__ spa_t ;
typedef  scalar_t__ spa_import_type_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 char* FM_EREPORT_ZFS_LOG_REPLAY ; 
 scalar_t__ SPA_IMPORT_ASSEMBLE ; 
 int /*<<< orphan*/  VDEV_AUX_BAD_LOG ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5(spa_t *spa, spa_import_type_t type, char **ereport)
{
	vdev_t *rvd = spa->spa_root_vdev;

	if (type != SPA_IMPORT_ASSEMBLE && FUNC4(spa)) {
		boolean_t missing = FUNC0(spa);
		if (missing) {
			if (spa->spa_missing_tvds != 0) {
				FUNC2(spa, "spa_check_logs failed "
				    "so dropping the logs");
			} else {
				*ereport = FM_EREPORT_ZFS_LOG_REPLAY;
				FUNC1(spa, "spa_check_logs failed");
				return (FUNC3(rvd, VDEV_AUX_BAD_LOG,
				    ENXIO));
			}
		}
	}

	return (0);
}