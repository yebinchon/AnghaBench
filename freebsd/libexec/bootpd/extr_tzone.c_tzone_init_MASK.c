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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int /*<<< orphan*/  tm_gmtoff; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 struct tm* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  secondswest ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timezone ; 

void
FUNC3()
{
#ifdef	SVR4
	/* XXX - Is this really SunOS specific? -gwr */
	secondswest = timezone;
#else /* SVR4 */
	struct tm *tm;
	time_t now;

	(void)FUNC2(&now);
	if ((tm = FUNC0(&now)) == NULL) {
		secondswest = 0;		/* Assume GMT for lack of anything better */
		FUNC1(LOG_ERR, "localtime() failed");
	} else {
		secondswest = -tm->tm_gmtoff;
	}
#endif /* SVR4 */
}