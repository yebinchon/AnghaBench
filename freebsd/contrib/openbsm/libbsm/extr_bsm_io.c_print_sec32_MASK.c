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
typedef  int u_int32_t ;
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int AU_OFLAG_RAW ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC2(FILE *fp, u_int32_t sec, int oflags)
{
	time_t timestamp;
	char timestr[26];

	if (oflags & AU_OFLAG_RAW)
		FUNC1(fp, "%u", sec);
	else {
		timestamp = (time_t)sec;
		FUNC0(&timestamp, timestr);
		timestr[24] = '\0'; /* No new line */
		FUNC1(fp, "%s", timestr);
	}
}