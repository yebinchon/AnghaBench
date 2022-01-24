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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(const char *arg)
{
	char *optbuf, *opt;
	int ret = 0;

	optbuf = FUNC3(arg);
	if (optbuf == NULL)
		 FUNC0(1, NULL);

	for (opt = optbuf; (opt = FUNC4(opt, ",")) != NULL; opt = NULL) {
		if (FUNC2(opt, "ro") == 0) {
			ret = 1;
			break;
		}
	}
	FUNC1(optbuf);
	return (ret);
}