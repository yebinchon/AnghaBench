#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct receive_writer_arg {scalar_t__ max_object; int /*<<< orphan*/  os; } ;
struct drr_spill {scalar_t__ drr_object; int /*<<< orphan*/  drr_length; } ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_8__ {int /*<<< orphan*/  db_data; int /*<<< orphan*/  db_size; int /*<<< orphan*/  db_object; } ;
typedef  TYPE_1__ dmu_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_MINBLOCKSIZE ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(struct receive_writer_arg *rwa, struct drr_spill *drrs,
    void *data)
{
	dmu_tx_t *tx;
	dmu_buf_t *db, *db_spill;
	int err;

	if (drrs->drr_length < SPA_MINBLOCKSIZE ||
	    drrs->drr_length > FUNC16(FUNC9(rwa->os)))
		return (FUNC0(EINVAL));

	if (FUNC8(rwa->os, drrs->drr_object, NULL) != 0)
		return (FUNC0(EINVAL));

	if (drrs->drr_object > rwa->max_object)
		rwa->max_object = drrs->drr_object;

	FUNC2(FUNC5(rwa->os, drrs->drr_object, FTAG, &db));
	if ((err = FUNC10(db, FTAG, &db_spill)) != 0) {
		FUNC6(db, FTAG);
		return (err);
	}

	tx = FUNC14(rwa->os);

	FUNC15(tx, db->db_object);

	err = FUNC12(tx, TXG_WAIT);
	if (err != 0) {
		FUNC6(db, FTAG);
		FUNC6(db_spill, FTAG);
		FUNC11(tx);
		return (err);
	}
	FUNC7(db_spill, tx);

	if (db_spill->db_size < drrs->drr_length)
		FUNC1(0 == FUNC4(db_spill,
		    drrs->drr_length, tx));
	FUNC3(data, db_spill->db_data, drrs->drr_length);

	FUNC6(db, FTAG);
	FUNC6(db_spill, FTAG);

	FUNC13(tx);
	return (0);
}