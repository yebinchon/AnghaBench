#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_6__ {int /*<<< orphan*/  bt2tctx; struct TYPE_6__* thread_name; } ;
typedef  TYPE_1__ prof_tdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  tdatas ; 
 int /*<<< orphan*/  tdatas_mtx ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(tsd_t *tsd, prof_tdata_t *tdata,
    bool even_if_attached) {
	FUNC3(FUNC6(tsd), &tdatas_mtx);

	FUNC5(&tdatas, tdata);

	FUNC0(FUNC4(tdata, even_if_attached));

	if (tdata->thread_name != NULL) {
		FUNC2(FUNC6(tsd), tdata->thread_name, NULL, NULL, true,
		    true);
	}
	FUNC1(tsd, &tdata->bt2tctx);
	FUNC2(FUNC6(tsd), tdata, NULL, NULL, true, true);
}