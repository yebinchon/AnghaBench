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
struct timespec {int dummy; } ;
typedef  int /*<<< orphan*/  pthread_mutex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*,struct timespec const*,struct timespec*) ; 

__attribute__((used)) static int
FUNC4(pthread_mutex_t *m, const struct timespec *ts)
{
	struct timespec ts_wait;
	FUNC0(FUNC1(CLOCK_REALTIME, &ts_wait) != -1);
	FUNC3(&ts_wait, ts, &ts_wait);

	return FUNC2(m, &ts_wait);
}