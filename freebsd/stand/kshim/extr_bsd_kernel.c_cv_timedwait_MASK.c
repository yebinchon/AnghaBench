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
struct mtx {int dummy; } ;
struct cv {int sleeping; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*) ; 
 int ticks ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(struct cv *cv, struct mtx *mtx, int timo)
{
	int start = ticks;
	int delta;
	int time = 0;

	if (cv->sleeping)
		return (EWOULDBLOCK);	/* not allowed */

	cv->sleeping = 1;

	while (cv->sleeping) {
		if (timo >= 0) {
			delta = ticks - start;
			if (delta >= timo || delta < 0)
				break;
		}
		FUNC3(mtx);

		FUNC4();

		if (++time >= (1000000 / hz)) {
			time = 0;
			FUNC0(1);
		}

		/* Sleep for 1 us */
		FUNC1(1);

		FUNC2(mtx);
	}

	if (cv->sleeping) {
		cv->sleeping = 0;
		return (EWOULDBLOCK);	/* not allowed */
	}
	return (0);
}