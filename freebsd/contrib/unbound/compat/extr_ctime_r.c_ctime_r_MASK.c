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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ctime_lock ; 
 int /*<<< orphan*/  ctime_r_cleanup ; 
 int ctime_r_init ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 

char *FUNC7(const time_t *timep, char *buf)
{
	char* result;
	if(!ctime_r_init) {
		/* still small race where this init can be done twice,
		 * which is mostly harmless */
		ctime_r_init = 1;
		FUNC2(&ctime_lock);
		FUNC0(&ctime_r_cleanup);
	}
	FUNC3(&ctime_lock);
	result = FUNC1(timep);
	if(buf && result) {
		if(FUNC6(result) > 10 && result[7]==' ' && result[8]=='0')
			result[8]=' '; /* fix error in windows ctime */
		FUNC5(buf, result);
	}
	FUNC4(&ctime_lock);
	return result;
}