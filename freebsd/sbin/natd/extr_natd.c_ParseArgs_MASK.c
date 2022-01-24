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
typedef  int /*<<< orphan*/  parmBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5 (int argc, char** argv)
{
	int		arg;
	char*		opt;
	char		parmBuf[256];
	int		len; /* bounds checking */

	for (arg = 1; arg < argc; arg++) {

		opt  = argv[arg];
		if (*opt != '-') {

			FUNC4 ("invalid option %s", opt);
			FUNC1 ();
		}

		parmBuf[0] = '\0';
		len = 0;

		while (arg < argc - 1) {

			if (argv[arg + 1][0] == '-')
				break;

			if (len) {
				FUNC3 (parmBuf, " ", sizeof(parmBuf) - (len + 1));
				len += FUNC2(parmBuf + len);
			}

			++arg;
			FUNC3 (parmBuf, argv[arg], sizeof(parmBuf) - (len + 1));
			len += FUNC2(parmBuf + len);

		}

		FUNC0 (opt + 1, (len ? parmBuf : NULL));

	}
}