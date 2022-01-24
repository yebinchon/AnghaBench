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
struct archive_string {int dummy; } ;
typedef  int /*<<< orphan*/  strtime ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_string*,char*,size_t) ; 
 struct tm* FUNC2 (int /*<<< orphan*/ *) ; 
 struct tm* FUNC3 (int /*<<< orphan*/ *,struct tm*) ; 
 size_t FUNC4 (char*,int,char const*,struct tm*) ; 

__attribute__((used)) static void
FUNC5(struct archive_string *as, const char *fmt, time_t t)
{
/** like strftime(3) but for time_t objects */
	struct tm *rt;
#if defined(HAVE_GMTIME_R) || defined(HAVE__GMTIME64_S)
	struct tm timeHere;
#endif
	char strtime[100];
	size_t len;

#ifdef HAVE_GMTIME_R
	if ((rt = gmtime_r(&t, &timeHere)) == NULL)
		return;
#elif defined(HAVE__GMTIME64_S)
	_gmtime64_s(&timeHere, &t);
#else
	if ((rt = FUNC2(&t)) == NULL)
		return;
#endif
	/* leave the hard yacker to our role model strftime() */
	len = FUNC4(strtime, sizeof(strtime)-1, fmt, rt);
	FUNC1(as, strtime, len);
}