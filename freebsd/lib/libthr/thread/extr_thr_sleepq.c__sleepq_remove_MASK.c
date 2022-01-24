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
struct sleepqueue {int /*<<< orphan*/  sq_freeq; int /*<<< orphan*/  sq_blocked; } ;
struct pthread {int /*<<< orphan*/ * wchan; struct sleepqueue* sleepqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sleepqueue*,int /*<<< orphan*/ ) ; 
 struct sleepqueue* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct pthread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sq_flink ; 
 int /*<<< orphan*/  sq_hash ; 
 int /*<<< orphan*/  wle ; 

int
FUNC5(struct sleepqueue *sq, struct pthread *td)
{
	int rc;

	FUNC4(&sq->sq_blocked, td, wle);
	if (FUNC3(&sq->sq_blocked)) {
		FUNC0(sq, sq_hash);
		td->sleepqueue = sq;
		rc = 0;
	} else {
		td->sleepqueue = FUNC1(&sq->sq_freeq);
		FUNC2(&sq->sq_freeq, sq_flink);
		rc = 1;
	}
	td->wchan = NULL;
	return (rc);
}