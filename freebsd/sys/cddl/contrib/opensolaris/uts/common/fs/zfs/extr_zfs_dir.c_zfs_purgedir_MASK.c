#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_11__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  z_sa_hdl; int /*<<< orphan*/  z_id; TYPE_2__* z_zfsvfs; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_17__ {int /*<<< orphan*/  z_unlinkedobj; int /*<<< orphan*/  z_os; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_18__ {int /*<<< orphan*/ * za_name; int /*<<< orphan*/  za_first_integer; } ;
typedef  TYPE_3__ zap_attribute_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_15__ {scalar_t__ v_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int ENOENT ; 
 int /*<<< orphan*/  FALSE ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 scalar_t__ VLNK ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_11__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_11__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC16 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__**) ; 

__attribute__((used)) static int
FUNC19(znode_t *dzp)
{
	zap_cursor_t	zc;
	zap_attribute_t	zap;
	znode_t		*xzp;
	dmu_tx_t	*tx;
	zfsvfs_t	*zfsvfs = dzp->z_zfsvfs;
	int skipped = 0;
	int error;

	for (FUNC14(&zc, zfsvfs->z_os, dzp->z_id);
	    (error = FUNC15(&zc, &zap)) == 0;
	    FUNC12(&zc)) {
		error = FUNC18(zfsvfs,
		    FUNC1(zap.za_first_integer), &xzp);
		if (error) {
			skipped += 1;
			continue;
		}

		FUNC10(FUNC2(xzp), LK_EXCLUSIVE | LK_RETRY);
		FUNC0((FUNC2(xzp)->v_type == VREG) ||
		    (FUNC2(xzp)->v_type == VLNK));

		tx = FUNC6(zfsvfs->z_os);
		FUNC7(tx, dzp->z_sa_hdl, B_FALSE);
		FUNC8(tx, dzp->z_id, FALSE, zap.za_name);
		FUNC7(tx, xzp->z_sa_hdl, B_FALSE);
		FUNC8(tx, zfsvfs->z_unlinkedobj, FALSE, NULL);
		/* Is this really needed ? */
		FUNC17(tx, xzp);
		FUNC9(tx);
		error = FUNC4(tx, TXG_WAIT);
		if (error) {
			FUNC3(tx);
			FUNC11(FUNC2(xzp));
			skipped += 1;
			continue;
		}

		error = FUNC16(dzp, zap.za_name, xzp, tx, 0, NULL);
		if (error)
			skipped += 1;
		FUNC5(tx);

		FUNC11(FUNC2(xzp));
	}
	FUNC13(&zc);
	if (error != ENOENT)
		skipped += 1;
	return (skipped);
}