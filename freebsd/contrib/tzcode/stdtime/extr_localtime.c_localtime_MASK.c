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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ __isthreaded ; 
 struct tm* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct tm*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  lcl_rwlock ; 
 struct tm* FUNC5 (int /*<<< orphan*/  const* const,long,struct tm*) ; 
 int /*<<< orphan*/  localtime_key ; 
 scalar_t__ localtime_key_error ; 
 int /*<<< orphan*/  localtime_key_init ; 
 int /*<<< orphan*/  localtime_once ; 
 scalar_t__ FUNC6 (int) ; 
 struct tm tm ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

struct tm *
FUNC8(const time_t *const timep)
{
	struct tm *p_tm;

	if (__isthreaded != 0) {
		FUNC3(&localtime_once, localtime_key_init);
		if (localtime_key_error != 0) {
			errno = localtime_key_error;
			return(NULL);
		}
		p_tm = FUNC2(localtime_key);
		if (p_tm == NULL) {
			if ((p_tm = (struct tm *)FUNC6(sizeof(struct tm)))
			    == NULL)
				return(NULL);
			FUNC4(localtime_key, p_tm);
		}
		FUNC0(&lcl_rwlock);
		FUNC7(1);
		p_tm = FUNC5(timep, 0L, p_tm);
		FUNC1(&lcl_rwlock);
	} else {
		FUNC7(0);
		p_tm = FUNC5(timep, 0L, &tm);
	}
	return(p_tm);
}