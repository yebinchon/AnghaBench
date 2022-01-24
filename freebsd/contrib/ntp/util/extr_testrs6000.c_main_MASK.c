#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_5__ {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_4__ {int tv_sec; scalar_t__ tv_usec; } ;
struct itimerval {TYPE_2__ it_value; TYPE_1__ it_interval; } ;
struct TYPE_6__ {int tv_usec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  SIGALRM ; 
 TYPE_3__ adjustment ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct itimerval*,struct itimerval*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timeout ; 

int
FUNC6 (
	int argc,
	char *argv[]
	)
{
	struct itimerval value, oldvalue;
	int i;
	time_t curtime;

	curtime = FUNC5(0);
	FUNC2("Starting: %s", FUNC0(&curtime));
	value.it_interval.tv_sec = value.it_value.tv_sec = 1;
	value.it_interval.tv_usec = value.it_value.tv_usec = 0;
	adjustment.tv_sec = 0;
	adjustment.tv_usec = -2000;
	FUNC4(SIGALRM, timeout);
	FUNC3(ITIMER_REAL, &value, &oldvalue);
	for (i=0; i<10; i++) {
		FUNC1();
	}
}