#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_8__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_t ;
struct TYPE_9__ {int /*<<< orphan*/  spa_root_vdev; int /*<<< orphan*/  spa_trim_lock; int /*<<< orphan*/  spa_trim_cv; TYPE_8__* spa_trim_thread; } ;
typedef  TYPE_1__ spa_t ;
struct TYPE_10__ {int /*<<< orphan*/  td_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_STATE ; 
 int /*<<< orphan*/  ZIO_FLAG_CANFAIL ; 
 TYPE_8__* curthread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int trim_max_interval ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(void *arg)
{
	spa_t *spa = arg;
	zio_t *zio;

#ifdef _KERNEL
	(void) snprintf(curthread->td_name, sizeof(curthread->td_name),
	    "trim %s", spa_name(spa));
#endif

	for (;;) {
		FUNC2(&spa->spa_trim_lock);
		if (spa->spa_trim_thread == NULL) {
			spa->spa_trim_thread = curthread;
			FUNC0(&spa->spa_trim_cv);
			FUNC3(&spa->spa_trim_lock);
			FUNC8();
		}

		(void) FUNC1(&spa->spa_trim_cv, &spa->spa_trim_lock,
		    hz * trim_max_interval);
		FUNC3(&spa->spa_trim_lock);

		zio = FUNC11(spa, NULL, NULL, ZIO_FLAG_CANFAIL);

		FUNC5(spa, SCL_STATE, FTAG, RW_READER);
		FUNC9(spa, zio, spa->spa_root_vdev);
		(void) FUNC12(zio);
		FUNC10(spa, spa->spa_root_vdev);
		FUNC6(spa, SCL_STATE, FTAG);
	}
}