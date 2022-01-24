#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  spa_feature_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_2__ {int /*<<< orphan*/ * dp_spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(void *arg, dmu_tx_t *tx)
{
	spa_t *spa = FUNC1(tx)->dp_spa;
	spa_feature_t *featurep = arg;

	if (!FUNC2(spa, *featurep))
		return (0);
	else
		return (FUNC0(EBUSY));
}