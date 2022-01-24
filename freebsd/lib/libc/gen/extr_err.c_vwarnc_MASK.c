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
 int /*<<< orphan*/ * err_file ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

void
FUNC5(int code, const char *fmt, va_list ap)
{
	if (err_file == NULL)
		FUNC1(NULL);
	FUNC2(err_file, "%s: ", FUNC0());
	if (fmt != NULL) {
		FUNC4(err_file, fmt, ap);
		FUNC2(err_file, ": ");
	}
	FUNC2(err_file, "%s\n", FUNC3(code));
}