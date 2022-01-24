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
typedef  int uint32_t ;
struct group_flags {int scope_mask; unsigned int sl; int FlowLabel; void* TClass; void* Q_Key; void* rate; void* mtu; } ;
typedef  int /*<<< orphan*/  osm_log_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  OSM_LOG_VERBOSE ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 void* FUNC4 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(unsigned lineno, osm_log_t * p_log,
			    struct group_flags *flags,
			    char *flag, char *val)
{
	int rc = 0;
	int len = FUNC2(flag);
	if (!FUNC3(flag, "mtu", len)) {
		rc = 1;
		if (!val || (flags->mtu = FUNC4(val, NULL, 0)) == 0)
			FUNC0(p_log, OSM_LOG_VERBOSE,
				"PARSE WARN: line %d: "
				"flag \'mtu\' requires valid value"
				" - skipped\n", lineno);
	} else if (!FUNC3(flag, "rate", len)) {
		rc = 1;
		if (!val || (flags->rate = FUNC4(val, NULL, 0)) == 0)
			FUNC0(p_log, OSM_LOG_VERBOSE,
				"PARSE WARN: line %d: "
				"flag \'rate\' requires valid value"
				" - skipped\n", lineno);
	} else if (!FUNC3(flag, "scope", len)) {
		unsigned int scope;
		rc = 1;
		if (!val || (scope = FUNC4(val, NULL, 0)) == 0 || scope > 0xF)
			FUNC0(p_log, OSM_LOG_VERBOSE,
				"PARSE WARN: line %d: "
				"flag \'scope\' requires valid value"
				" - skipped\n", lineno);
		else
			flags->scope_mask |= (1<<scope);
	} else if (!FUNC3(flag, "Q_Key", FUNC2(flag))) {
		rc = 1;
		if (!val || (flags->Q_Key = FUNC4(val, NULL, 0)) == 0)
			FUNC0(p_log, OSM_LOG_VERBOSE,
				"PARSE WARN: line %d: "
				"flag \'Q_Key\' requires valid value"
				" - using '0'\n", lineno);
	} else if (!FUNC3(flag, "TClass", FUNC2(flag))) {
		rc =1;
		if (!val || (flags->TClass = FUNC4(val, NULL, 0)) == 0)
			FUNC0(p_log, OSM_LOG_VERBOSE,
				"PARSE WARN: line %d: "
				"flag \'TClass\' requires valid value"
				" - using '0'\n", lineno);
	} else if (!FUNC3(flag, "sl", len)) {
		unsigned sl;
		char *end;
		rc = 1;

		if (!val || !*val || (sl = FUNC4(val, &end, 0)) > 15 ||
		    (*end && !FUNC1(*end)))
			FUNC0(p_log, OSM_LOG_VERBOSE,
				"PARSE WARN: line %d: "
				"flag \'sl\' requires valid value"
				" - skipped\n", lineno);
		else
			flags->sl = sl;
	} else if (!FUNC3(flag, "FlowLabel", len)) {
		uint32_t FlowLabel;
		char *end;
		rc = 1;

		if (!val || !*val ||
		    (FlowLabel = FUNC4(val, &end, 0)) > 0xFFFFF ||
		    (*end && !FUNC1(*end)))
			FUNC0(p_log, OSM_LOG_VERBOSE,
				"PARSE WARN: line %d: "
				"flag \'FlowLabel\' requires valid value"
				" - skipped\n", lineno);
		else
			flags->FlowLabel = FlowLabel;
	}

	return rc;
}