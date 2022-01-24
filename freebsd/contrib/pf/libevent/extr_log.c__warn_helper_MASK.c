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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(int severity, int log_errno, const char *fmt, va_list ap)
{
	char buf[1024];
	size_t len;

	if (fmt != NULL)
		FUNC2(buf, sizeof(buf), fmt, ap);
	else
		buf[0] = '\0';

	if (log_errno >= 0) {
		len = FUNC4(buf);
		if (len < sizeof(buf) - 3) {
			FUNC1(buf + len, sizeof(buf) - len, ": %s",
			    FUNC3(log_errno));
		}
	}

	FUNC0(severity, buf);
}