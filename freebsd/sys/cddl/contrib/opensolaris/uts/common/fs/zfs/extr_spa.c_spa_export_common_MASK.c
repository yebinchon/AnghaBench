#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int spa_state; scalar_t__ spa_inject_ref; scalar_t__ spa_config; int /*<<< orphan*/ * spa_root_vdev; scalar_t__ spa_final_txg; int /*<<< orphan*/  spa_dsl_pool; scalar_t__ spa_sync_on; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  EROFS ; 
 int /*<<< orphan*/  ESC_ZFS_POOL_DESTROY ; 
 int /*<<< orphan*/  EXDEV ; 
 int /*<<< orphan*/  FTAG ; 
 int FWRITE ; 
 int POOL_STATE_EXPORTED ; 
 int POOL_STATE_UNINITIALIZED ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_ALL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TXG_DEFER_SIZE ; 
 int /*<<< orphan*/  VDEV_INITIALIZE_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 TYPE_1__* FUNC15 (char*) ; 
 int spa_mode_global ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC24(char *pool, int new_state, nvlist_t **oldconfig,
    boolean_t force, boolean_t hardforce)
{
	spa_t *spa;

	if (oldconfig)
		*oldconfig = NULL;

	if (!(spa_mode_global & FWRITE))
		return (FUNC0(EROFS));

	FUNC2(&spa_namespace_lock);
	if ((spa = FUNC15(pool)) == NULL) {
		FUNC3(&spa_namespace_lock);
		return (FUNC0(ENOENT));
	}

	/*
	 * Put a hold on the pool, drop the namespace lock, stop async tasks,
	 * reacquire the namespace lock, and see if we can export.
	 */
	FUNC16(spa, FTAG);
	FUNC3(&spa_namespace_lock);
	FUNC6(spa);
	FUNC2(&spa_namespace_lock);
	FUNC7(spa, FTAG);

	/*
	 * The pool will be in core if it's openable,
	 * in which case we can modify its state.
	 */
	if (spa->spa_state != POOL_STATE_UNINITIALIZED && spa->spa_sync_on) {

		/*
		 * Objsets may be open only because they're dirty, so we
		 * have to force it to sync before checking spa_refcnt.
		 */
		FUNC21(spa->spa_dsl_pool, 0);
		FUNC12(spa);

		/*
		 * A pool cannot be exported or destroyed if there are active
		 * references.  If we are resetting a pool, allow references by
		 * fault injection handlers.
		 */
		if (!FUNC17(spa) ||
		    (spa->spa_inject_ref != 0 &&
		    new_state != POOL_STATE_UNINITIALIZED)) {
			FUNC5(spa);
			FUNC3(&spa_namespace_lock);
			return (FUNC0(EBUSY));
		}

		/*
		 * A pool cannot be exported if it has an active shared spare.
		 * This is to prevent other pools stealing the active spare
		 * from an exported pool. At user's own will, such pool can
		 * be forcedly exported.
		 */
		if (!force && new_state == POOL_STATE_EXPORTED &&
		    FUNC13(spa)) {
			FUNC5(spa);
			FUNC3(&spa_namespace_lock);
			return (FUNC0(EXDEV));
		}

		/*
		 * We're about to export or destroy this pool. Make sure
		 * we stop all initializtion activity here before we
		 * set the spa_final_txg. This will ensure that all
		 * dirty data resulting from the initialization is
		 * committed to disk before we unload the pool.
		 */
		if (spa->spa_root_vdev != NULL) {
			FUNC23(spa->spa_root_vdev,
			    VDEV_INITIALIZE_ACTIVE);
		}

		/*
		 * We want this to be reflected on every label,
		 * so mark them all dirty.  spa_unload() will do the
		 * final sync that pushes these changes out.
		 */
		if (new_state != POOL_STATE_UNINITIALIZED && !hardforce) {
			FUNC8(spa, SCL_ALL, FTAG, RW_WRITER);
			spa->spa_state = new_state;
			spa->spa_final_txg = FUNC14(spa) +
			    TXG_DEFER_SIZE + 1;
			FUNC22(spa->spa_root_vdev);
			FUNC9(spa, SCL_ALL, FTAG);
		}
	}

	FUNC11(spa, NULL, NULL, ESC_ZFS_POOL_DESTROY);

	if (spa->spa_state != POOL_STATE_UNINITIALIZED) {
		FUNC19(spa);
		FUNC10(spa);
	}

	if (oldconfig && spa->spa_config)
		FUNC1(FUNC4(spa->spa_config, oldconfig, 0) == 0);

	if (new_state != POOL_STATE_UNINITIALIZED) {
		if (!hardforce)
			FUNC20(spa, B_TRUE, B_TRUE);
		FUNC18(spa);
	}
	FUNC3(&spa_namespace_lock);

	return (0);
}