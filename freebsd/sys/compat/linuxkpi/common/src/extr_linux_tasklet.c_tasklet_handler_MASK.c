#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tasklet_worker {int /*<<< orphan*/  head; } ;
struct tasklet_struct {int /*<<< orphan*/  data; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  count; } ;

/* Variables and functions */
 struct tasklet_struct* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tasklet_struct*,int /*<<< orphan*/ ) ; 
 struct tasklet_struct* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct tasklet_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct tasklet_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASKLET_ST_EXEC ; 
 int /*<<< orphan*/  TASKLET_ST_IDLE ; 
 int /*<<< orphan*/  FUNC5 (struct tasklet_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tasklet_worker*) ; 
 int /*<<< orphan*/  FUNC7 (struct tasklet_worker*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tasklet_list ; 

__attribute__((used)) static void
FUNC11(void *arg)
{
	struct tasklet_worker *tw = (struct tasklet_worker *)arg;
	struct tasklet_struct *ts;
	struct tasklet_struct *last;

	FUNC9(curthread);

	FUNC6(tw);
	last = FUNC2(&tw->head, tasklet_list);
	while (1) {
		ts = FUNC0(&tw->head);
		if (ts == NULL)
			break;
		FUNC3(&tw->head, ts, entry);

		if (!FUNC8(&ts->count)) {
			FUNC7(tw);
			do {
				/* reset executing state */
				FUNC5(ts, TASKLET_ST_EXEC);

				ts->func(ts->data);

			} while (FUNC4(ts, TASKLET_ST_EXEC,
			        TASKLET_ST_IDLE) == 0);
			FUNC6(tw);
		} else {
			FUNC1(&tw->head, ts, entry);
		}
		if (ts == last)
			break;
	}
	FUNC7(tw);
}