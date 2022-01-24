#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_10__ {int /*<<< orphan*/  os_flags; } ;
typedef  TYPE_1__ objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FORREAL ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  JUSTLOOKING ; 
 int /*<<< orphan*/  OBJSET_FLAG_USERACCOUNTING_COMPLETE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC16(objset_t *os)
{
	uint64_t obj;
	int err = 0;

	if (FUNC7(os))
		return (0);
	if (!FUNC8(os))
		return (FUNC0(ENOTSUP));
	if (FUNC5(os))
		return (FUNC0(EINVAL));

	/*
	 * We simply need to mark every object dirty, so that it will be
	 * synced out and now accounted.  If this is called
	 * concurrently, or if we already did some work before crashing,
	 * that's fine, since we track each object's accounted state
	 * independently.
	 */

	for (obj = 0; err == 0; err = FUNC4(os, &obj, FALSE, 0)) {
		dmu_tx_t *tx;
		dmu_buf_t *db;
		int objerr;

		if (FUNC14(JUSTLOOKING) && FUNC14(FORREAL))
			return (FUNC0(EINTR));

		objerr = FUNC1(os, obj, FTAG, &db);
		if (objerr != 0)
			continue;
		tx = FUNC12(os);
		FUNC13(tx, obj);
		objerr = FUNC10(tx, TXG_WAIT);
		if (objerr != 0) {
			FUNC9(tx);
			continue;
		}
		FUNC3(db, tx);
		FUNC2(db, FTAG);
		FUNC11(tx);
	}

	os->os_flags |= OBJSET_FLAG_USERACCOUNTING_COMPLETE;
	FUNC15(FUNC6(os), 0);
	return (0);
}