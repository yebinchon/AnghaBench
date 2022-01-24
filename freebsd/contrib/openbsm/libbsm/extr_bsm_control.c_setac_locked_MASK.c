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
typedef  scalar_t__ time_t ;
struct stat {scalar_t__ st_ctime; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * fp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct stat*) ; 
 int ptrmoved ; 

__attribute__((used)) static void
FUNC4(void)
{
	static time_t lastctime = 0;
	struct stat sbuf;

	ptrmoved = 1;
	if (fp != NULL) {
		/*
		 * Check to see if the file on disk has changed.  If so,
		 * force a re-read of the file by closing it.
		 */
		if (FUNC3(FUNC1(fp), &sbuf) < 0)
			goto closefp;
		if (lastctime != sbuf.st_ctime) {
			lastctime = sbuf.st_ctime;
closefp:
			FUNC0(fp);
			fp = NULL;
			return;
		}

		FUNC2(fp, 0, SEEK_SET);
	}
}