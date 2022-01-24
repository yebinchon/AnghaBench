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
typedef  int /*<<< orphan*/  u_char ;
struct timespec {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct timespec*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct timespec*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ quit ; 
 scalar_t__ reread_config ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10(const char *conffile, const char *trailfile, FILE *trail_fp)
{
	struct timespec ts;
	FILE *conf_fp;
	u_char *buf;
	int reclen;

	while (1) {
		/*
		 * On SIGHUP, we reread the configuration file and reopen
		 * the trail file.
		 */
		if (reread_config) {
			reread_config = 0;
			FUNC9("rereading configuration");
			conf_fp = FUNC5(conffile, "r");
			if (conf_fp == NULL)
				FUNC3(-1, "%s", conffile);
			FUNC1(conffile, conf_fp);
			FUNC4(conf_fp);

			FUNC4(trail_fp);
			trail_fp = FUNC5(trailfile, "r");
			if (trail_fp == NULL)
				FUNC3(-1, "%s", trailfile);
		}
		if (quit) {
			FUNC9("quitting");
			break;
		}

		/*
		 * For now, be relatively unrobust about incomplete records,
		 * but in the future will want to do better.  Need to look
		 * more at the right blocking and signal behavior here.
		 */
		reclen = FUNC0(trail_fp, &buf);
		if (reclen == -1)
			continue;
		if (FUNC2(CLOCK_REALTIME, &ts) < 0)
			FUNC3(-1, "clock_gettime");
		FUNC7(&ts, buf, reclen);
		FUNC8(&ts, buf, reclen);
		FUNC6(buf);
	}
}