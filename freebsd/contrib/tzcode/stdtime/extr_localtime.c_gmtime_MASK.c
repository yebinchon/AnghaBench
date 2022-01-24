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
struct tm {int dummy; } ;

/* Variables and functions */
 scalar_t__ __isthreaded ; 
 struct tm* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct tm*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  gmtime_key ; 
 scalar_t__ gmtime_key_error ; 
 int /*<<< orphan*/  gmtime_key_init ; 
 int /*<<< orphan*/  gmtime_once ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const* const,long,struct tm*) ; 
 scalar_t__ FUNC4 (int) ; 
 struct tm tm ; 

struct tm *
FUNC5(const time_t *const timep)
{
	struct tm *p_tm;

	if (__isthreaded != 0) {
		FUNC1(&gmtime_once, gmtime_key_init);
		if (gmtime_key_error != 0) {
			errno = gmtime_key_error;
			return(NULL);
		}
		/*
		 * Changed to follow POSIX.1 threads standard, which
		 * is what BSD currently has.
		 */
		if ((p_tm = FUNC0(gmtime_key)) == NULL) {
			if ((p_tm = (struct tm *)FUNC4(sizeof(struct tm)))
			    == NULL) {
				return(NULL);
			}
			FUNC2(gmtime_key, p_tm);
		}
		FUNC3(timep, 0L, p_tm);
		return(p_tm);
	}
	else {
		FUNC3(timep, 0L, &tm);
		return(&tm);
	}
}