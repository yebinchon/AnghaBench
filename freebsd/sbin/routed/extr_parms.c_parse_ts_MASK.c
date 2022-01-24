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
typedef  int u_int ;
typedef  int /*<<< orphan*/  tm ;
typedef  int time_t ;
struct tm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tm*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct tm*) ; 
 scalar_t__ FUNC2 (char**,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,char*,struct tm*) ; 

__attribute__((used)) static char *
FUNC6(time_t *tp,
	 char **valp,
	 char *val0,
	 char *delimp,
	 char *buf,
	 u_int bufsize)
{
	struct tm tm;
	char *ptr;

	if (0 > FUNC2(valp, "| ,\n\r", delimp,
			    buf,bufsize)
	    || buf[bufsize-1] != '\0'
	    || buf[bufsize-2] != '\0') {
		FUNC3(buf,"bad timestamp %.25s", val0);
		return buf;
	}
	FUNC4(buf,"\n");
	FUNC0(&tm, 0, sizeof(tm));
	ptr = FUNC5(buf, "%y/%m/%d@%H:%M\n", &tm);
	if (ptr == NULL || *ptr != '\0') {
		FUNC3(buf,"bad timestamp %.25s", val0);
		return buf;
	}

	if ((*tp = FUNC1(&tm)) == -1) {
		FUNC3(buf,"bad timestamp %.25s", val0);
		return buf;
	}

	return 0;
}