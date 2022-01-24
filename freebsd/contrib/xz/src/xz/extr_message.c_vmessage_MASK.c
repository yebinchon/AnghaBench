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
typedef  enum message_verbosity { ____Placeholder_message_verbosity } message_verbosity ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(enum message_verbosity v, const char *fmt, va_list ap)
{
	if (v <= verbosity) {
		FUNC4();

		FUNC3(false);

		// TRANSLATORS: This is the program name in the beginning
		// of the line in messages. Usually it becomes "xz: ".
		// This is a translatable string because French needs
		// a space before a colon.
		FUNC1(stderr, FUNC0("%s: "), progname);
		FUNC6(stderr, fmt, ap);
		FUNC2('\n', stderr);

		FUNC5();
	}

	return;
}