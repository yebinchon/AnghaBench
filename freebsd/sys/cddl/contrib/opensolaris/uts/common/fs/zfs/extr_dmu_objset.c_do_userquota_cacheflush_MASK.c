#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  uqn_delta; int /*<<< orphan*/  uqn_id; } ;
typedef  TYPE_1__ userquota_node_t ;
struct TYPE_10__ {int /*<<< orphan*/  uqc_group_deltas; int /*<<< orphan*/  uqc_user_deltas; } ;
typedef  TYPE_2__ userquota_cache_t ;
struct TYPE_11__ {int /*<<< orphan*/  os_userused_lock; } ;
typedef  TYPE_3__ objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMU_GROUPUSED_OBJECT ; 
 int /*<<< orphan*/  DMU_USERUSED_OBJECT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(objset_t *os, userquota_cache_t *cache, dmu_tx_t *tx)
{
	void *cookie;
	userquota_node_t *uqn;

	FUNC0(FUNC4(tx));

	cookie = NULL;
	while ((uqn = FUNC3(&cache->uqc_user_deltas,
	    &cookie)) != NULL) {
		/*
		 * os_userused_lock protects against concurrent calls to
		 * zap_increment_int().  It's needed because zap_increment_int()
		 * is not thread-safe (i.e. not atomic).
		 */
		FUNC6(&os->os_userused_lock);
		FUNC1(FUNC8(os, DMU_USERUSED_OBJECT,
		    uqn->uqn_id, uqn->uqn_delta, tx));
		FUNC7(&os->os_userused_lock);
		FUNC5(uqn, sizeof (*uqn));
	}
	FUNC2(&cache->uqc_user_deltas);

	cookie = NULL;
	while ((uqn = FUNC3(&cache->uqc_group_deltas,
	    &cookie)) != NULL) {
		FUNC6(&os->os_userused_lock);
		FUNC1(FUNC8(os, DMU_GROUPUSED_OBJECT,
		    uqn->uqn_id, uqn->uqn_delta, tx));
		FUNC7(&os->os_userused_lock);
		FUNC5(uqn, sizeof (*uqn));
	}
	FUNC2(&cache->uqc_group_deltas);
}