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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EVENT_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char const*,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (char*) ; 

void
FUNC5(int severity, const char *errstr, const char *fmt, va_list ap)
{
	char buf[1024];
	size_t len;

	if (severity == EVENT_LOG_DEBUG && !FUNC0())
		return;

	if (fmt != NULL)
		FUNC3(buf, sizeof(buf), fmt, ap);
	else
		buf[0] = '\0';

	if (errstr) {
		len = FUNC4(buf);
		if (len < sizeof(buf) - 3) {
			FUNC2(buf + len, sizeof(buf) - len, ": %s", errstr);
		}
	}

	FUNC1(severity, buf);
}