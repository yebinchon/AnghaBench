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
 int CMD_OK ; 
 int FUNC0 (int,char**,char*) ; 
 char* FUNC1 (char*,char*) ; 
 int optind ; 
 int optreset ; 
 int pnp_dump_flag ; 
 int pnp_verbose_flag ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3(int argc, char *argv[])
{
	char *module;
	int ch;

	pnp_verbose_flag = 0;
	pnp_dump_flag = 0;
	optind = 1;
	optreset = 1;
	while ((ch = FUNC0(argc, argv, "vd")) != -1) {
		switch(ch) {
		case 'v':
			pnp_verbose_flag = 1;
			break;
		case 'd':
			pnp_dump_flag = 1;
			break;
		case '?':
		default:
			/* getopt has already reported an error */
			return(CMD_OK);
		}
	}
	argv += (optind - 1);
	argc -= (optind - 1);

	module = FUNC1(argv[1], argv[2]);
	if (module)
		FUNC2("Matched module: %s\n", module);
	else if(argv[1])
		FUNC2("No module matches %s\n", argv[1]);

	return (CMD_OK);
}