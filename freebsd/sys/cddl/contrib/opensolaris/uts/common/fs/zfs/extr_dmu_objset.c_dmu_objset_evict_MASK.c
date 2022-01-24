#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  os_lock; int /*<<< orphan*/  os_dnodes; int /*<<< orphan*/  os_spa; scalar_t__ os_sa; int /*<<< orphan*/ * os_dsl_dataset; } ;
typedef  TYPE_1__ objset_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TXG_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void
FUNC10(objset_t *os)
{
	dsl_dataset_t *ds = os->os_dsl_dataset;

	for (int t = 0; t < TXG_SIZE; t++)
		FUNC0(!FUNC3(os, t));

	if (ds)
		FUNC4(ds, os);

	if (os->os_sa)
		FUNC8(os);

	FUNC1(os);

	FUNC6(&os->os_lock);
	FUNC9(os->os_spa, os);
	if (FUNC5(&os->os_dnodes)) {
		FUNC7(&os->os_lock);
		FUNC2(os);
	} else {
		FUNC7(&os->os_lock);
	}
}