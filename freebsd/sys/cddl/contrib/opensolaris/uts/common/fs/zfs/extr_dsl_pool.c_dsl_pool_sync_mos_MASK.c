#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_t ;
struct TYPE_3__ {int /*<<< orphan*/  dp_meta_rootbp; int /*<<< orphan*/  dp_spa; int /*<<< orphan*/  dp_meta_objset; } ;
typedef  TYPE_1__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZIO_FLAG_MUSTSUCCEED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(dsl_pool_t *dp, dmu_tx_t *tx)
{
	zio_t *zio = FUNC4(dp->dp_spa, NULL, NULL, ZIO_FLAG_MUSTSUCCEED);
	FUNC1(dp->dp_meta_objset, zio, tx);
	FUNC0(FUNC5(zio));
	FUNC2(&dp->dp_meta_rootbp, "meta objset rootbp is %s", "");
	FUNC3(dp->dp_spa, &dp->dp_meta_rootbp);
}