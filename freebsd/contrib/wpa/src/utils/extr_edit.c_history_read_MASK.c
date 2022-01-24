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
 int CMD_BUF_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(const char *fname)
{
	FILE *f;
	char buf[CMD_BUF_LEN], *pos;

	f = FUNC2(fname, "r");
	if (f == NULL)
		return;

	while (FUNC1(buf, CMD_BUF_LEN, f)) {
		for (pos = buf; *pos; pos++) {
			if (*pos == '\r' || *pos == '\n') {
				*pos = '\0';
				break;
			}
		}
		FUNC3(buf);
	}

	FUNC0(f);
}