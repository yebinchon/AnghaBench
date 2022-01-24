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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sleepqueue* FUNC2 (int,int) ; 

struct sleepqueue *
FUNC3(void)
{
	struct sleepqueue *sq;

	sq = FUNC2(1, sizeof(struct sleepqueue));
	FUNC1(&sq->sq_blocked);
	FUNC0(&sq->sq_freeq);
	return (sq);
}