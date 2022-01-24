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
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * err_file ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

void
FUNC7(int eval, int code, const char *fmt, va_list ap)
{
	if (err_file == NULL)
		FUNC2(NULL);
	FUNC4(err_file, "%s: ", FUNC0());
	if (fmt != NULL) {
		FUNC6(err_file, fmt, ap);
		FUNC4(err_file, ": ");
	}
	FUNC4(err_file, "%s\n", FUNC5(code));
	if (&err_exit)
		FUNC1(eval);
	FUNC3(eval);
}