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
#define  CE_CONT 132 
#define  CE_IGNORE 131 
#define  CE_NOTE 130 
#define  CE_PANIC 129 
#define  CE_WARN 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char const*,int /*<<< orphan*/ ) ; 

void
FUNC4(int ce, const char *fmt, va_list adx)
{
	char buf[256];
	const char *prefix;

	prefix = NULL; /* silence unwitty compilers */
	switch (ce) {
	case CE_CONT:
		prefix = "Solaris(cont): ";
		break;
	case CE_NOTE:
		prefix = "Solaris: NOTICE: ";
		break;
	case CE_WARN:
		prefix = "Solaris: WARNING: ";
		break;
	case CE_PANIC:
		prefix = "Solaris(panic): ";
		break;
	case CE_IGNORE:
		break;
	default:
		FUNC0("Solaris: unknown severity level");
	}
	if (ce == CE_PANIC) {
		FUNC3(buf, sizeof(buf), fmt, adx);
		FUNC0("%s%s", prefix, buf);
	}
	if (ce != CE_IGNORE) {
		FUNC1("%s", prefix);
		FUNC2(fmt, adx);
		FUNC1("\n");
	}
}