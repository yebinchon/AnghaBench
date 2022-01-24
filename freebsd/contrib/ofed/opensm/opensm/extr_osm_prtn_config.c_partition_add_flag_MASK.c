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
struct part_conf {int is_ipoib; int /*<<< orphan*/  p_log; int /*<<< orphan*/  indx0; int /*<<< orphan*/  membership; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOTH ; 
 int /*<<< orphan*/  FULL ; 
 int /*<<< orphan*/  LIMITED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int /*<<< orphan*/  OSM_LOG_VERBOSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 

__attribute__((used)) static int FUNC5(unsigned lineno, struct part_conf *conf,
			      char *flag, char *val)
{
	int len = FUNC3(flag);

	/* ipoib gc group flags are processed here. */
	if (FUNC1(lineno, conf->p_log, &conf->flags, flag, val))
		return 0;

	/* partition flags go here. */
	if (!FUNC4(flag, "ipoib", len)) {
		conf->is_ipoib = 1;
	} else if (!FUNC4(flag, "defmember", len)) {
		if (!val || (FUNC4(val, "limited", FUNC3(val))
			     && FUNC4(val, "both", FUNC3(val))
			     && FUNC4(val, "full", FUNC3(val))))
			FUNC0(conf->p_log, OSM_LOG_VERBOSE,
				"PARSE WARN: line %d: "
				"flag \'defmember\' requires valid value (limited or full or both)"
				" - skipped\n", lineno);
		else {
			if (!FUNC4(val, "full", FUNC3(val)))
				conf->membership = FULL;
			else if (!FUNC4(val, "both", FUNC3(val)))
				conf->membership = BOTH;
			else
				conf->membership = LIMITED;
		}
	} else if (!FUNC2(flag, "indx0"))
		conf->indx0 = TRUE;
	else {
		FUNC0(conf->p_log, OSM_LOG_VERBOSE,
			"PARSE WARN: line %d: "
			"unrecognized partition flag \'%s\'"
			" - ignored\n", lineno, flag);
	}
	return 0;
}