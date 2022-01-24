#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  line ;
struct TYPE_2__ {char* dv_name; scalar_t__ (* dv_print ) (int) ;} ;

/* Variables and functions */
 int CMD_OK ; 
 TYPE_1__** devsw ; 
 int FUNC0 (int,char**,char*) ; 
 int optind ; 
 int optreset ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(int argc, char *argv[])
{
	int	verbose, ch, i;
	char	line[80];

	verbose = 0;
	optind = 1;
	optreset = 1;
	while ((ch = FUNC0(argc, argv, "v")) != -1) {
		switch (ch) {
		case 'v':
			verbose = 1;
			break;
		case '?':
		default:
			/* getopt has already reported an error */
			return (CMD_OK);
		}
	}
	argv += (optind);
	argc -= (optind);

	FUNC2();
	for (i = 0; devsw[i] != NULL; i++) {
		if (devsw[i]->dv_print != NULL) {
			if (devsw[i]->dv_print(verbose))
				break;
		} else {
			FUNC4(line, sizeof(line), "%s: (unknown)\n",
			    devsw[i]->dv_name);
			if (FUNC3(line))
				break;
		}
	}
	FUNC1();
	return (CMD_OK);
}