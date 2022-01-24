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
struct lfstestargs {char* ta_devpath; char ta_cleanerloop; char* ta_mntpath; int /*<<< orphan*/  ta_hostpath; } ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  RUMP_ETFS_CHR ; 
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int opterr ; 
 int optind ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 

__attribute__((used)) static void *
FUNC4(void *arg)
{
	char thepath[MAXPATHLEN];
	struct lfstestargs *args = arg;
	const char *the_argv[7];
	char buf[64];

	/* this inspired by the cleaner code.  fixme */
	FUNC3(thepath, "/dev/r%s", args->ta_devpath+5);
	FUNC2(thepath, args->ta_hostpath, RUMP_ETFS_CHR);
	FUNC3(buf, "%p", &args->ta_cleanerloop);

	the_argv[0] = "megamaid";
	the_argv[1] = "-D"; /* don't fork() & detach */
	the_argv[2] = "-S";
	the_argv[3] = buf;
	the_argv[4] = args->ta_mntpath;
	the_argv[5] = NULL;

	/* xxxatf */
	optind = 1;
	opterr = 1;

	FUNC1(5, FUNC0(the_argv));

	return NULL;
}