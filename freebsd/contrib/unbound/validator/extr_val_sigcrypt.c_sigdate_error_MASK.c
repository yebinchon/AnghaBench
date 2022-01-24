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
typedef  int /*<<< orphan*/  tm ;
typedef  scalar_t__ time_t ;
struct tm {int dummy; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ VERB_QUERY ; 
 scalar_t__ FUNC0 (scalar_t__*,struct tm*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct tm*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char*,int,char*,struct tm*) ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static void
FUNC4(const char* str, int32_t expi, int32_t incep, int32_t now)
{
	struct tm tm;
	char expi_buf[16];
	char incep_buf[16];
	char now_buf[16];
	time_t te, ti, tn;

	if(verbosity < VERB_QUERY)
		return;
	te = (time_t)expi;
	ti = (time_t)incep;
	tn = (time_t)now;
	FUNC2(&tm, 0, sizeof(tm));
	if(FUNC0(&te, &tm) && FUNC3(expi_buf, 15, "%Y%m%d%H%M%S", &tm)
	 &&FUNC0(&ti, &tm) && FUNC3(incep_buf, 15, "%Y%m%d%H%M%S", &tm)
	 &&FUNC0(&tn, &tm) && FUNC3(now_buf, 15, "%Y%m%d%H%M%S", &tm)) {
		FUNC1("%s expi=%s incep=%s now=%s", str, expi_buf, 
			incep_buf, now_buf);
	} else
		FUNC1("%s expi=%u incep=%u now=%u", str, (unsigned)expi, 
			(unsigned)incep, (unsigned)now);
}