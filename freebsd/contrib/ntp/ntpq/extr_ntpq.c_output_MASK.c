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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ MAXOUTLINE ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ out_chars ; 
 scalar_t__ out_linecount ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(
	FILE *fp,
	const char *name,
	const char *value
	)
{
	int len;

	/* strlen of "name=value" */
	len = FUNC2(FUNC3(name) + 1 + FUNC3(value));

	if (out_chars != 0) {
		out_chars += 2;
		if ((out_linecount + len + 2) > MAXOUTLINE) {
			FUNC0(",\n", fp);
			out_linecount = 0;
		} else {
			FUNC0(", ", fp);
			out_linecount += 2;
		}
	}

	FUNC0(name, fp);
	FUNC1('=', fp);
	FUNC0(value, fp);
	out_chars += len;
	out_linecount += len;
}