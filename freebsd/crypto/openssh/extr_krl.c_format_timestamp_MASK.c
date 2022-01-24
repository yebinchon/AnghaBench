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
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;

/* Variables and functions */
 struct tm* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 

__attribute__((used)) static void
FUNC3(u_int64_t timestamp, char *ts, size_t nts)
{
	time_t t;
	struct tm *tm;

	t = timestamp;
	tm = FUNC0(&t);
	if (tm == NULL)
		FUNC2(ts, "<INVALID>", nts);
	else {
		*ts = '\0';
		FUNC1(ts, nts, "%Y%m%dT%H%M%S", tm);
	}
}