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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
#define  LOG_DEBUG 132 
#define  LOG_ERR 131 
#define  LOG_INFO 130 
#define  LOG_NOTICE 129 
#define  LOG_WARNING 128 
 scalar_t__ g_gate_verbose ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char const*,int /*<<< orphan*/ ) ; 

void
FUNC3(int priority, const char *message, va_list ap)
{

	if (g_gate_verbose) {
		const char *prefix;

		switch (priority) {
		case LOG_ERR:
			prefix = "error";
			break;
		case LOG_WARNING:
			prefix = "warning";
			break;
		case LOG_NOTICE:
			prefix = "notice";
			break;
		case LOG_INFO:
			prefix = "info";
			break;
		case LOG_DEBUG:
			prefix = "debug";
			break;
		default:
			prefix = "unknown";
		}

		FUNC0("%s: ", prefix);
		FUNC1(message, ap);
		FUNC0("\n");
	} else {
		if (priority != LOG_DEBUG)
			FUNC2(priority, message, ap);
	}
}