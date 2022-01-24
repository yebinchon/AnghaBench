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
struct pmcstat_image {int /*<<< orphan*/  pi_type; scalar_t__ pi_iskernelmodule; int /*<<< orphan*/  pi_execpath; } ;
struct pmcstat_args {char* pa_fsroot; int pa_verbosity; } ;
struct exec {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  ex ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  EX_SOFTWARE ; 
 scalar_t__ FUNC0 (struct exec) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  PMCSTAT_IMAGE_AOUT ; 
 int /*<<< orphan*/  PMCSTAT_IMAGE_INDETERMINABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,struct exec*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 

void
FUNC9(struct pmcstat_image *image,
    struct pmcstat_args *args)
{
	int fd;
	ssize_t nbytes;
	struct exec ex;
	const char *path;
	char buffer[PATH_MAX];

	path = FUNC5(image->pi_execpath);
	FUNC1(path != NULL);

	if (image->pi_iskernelmodule)
		FUNC3(EX_SOFTWARE,
		    "ERROR: a.out kernel modules are unsupported \"%s\"", path);

	(void) FUNC7(buffer, sizeof(buffer), "%s%s",
	    args->pa_fsroot, path);

	if ((fd = FUNC4(buffer, O_RDONLY, 0)) < 0 ||
	    (nbytes = FUNC6(fd, &ex, sizeof(ex))) < 0) {
		if (args->pa_verbosity >= 2)
			FUNC8("WARNING: Cannot determine type of \"%s\"",
			    path);
		image->pi_type = PMCSTAT_IMAGE_INDETERMINABLE;
		if (fd != -1)
			(void) FUNC2(fd);
		return;
	}

	(void) FUNC2(fd);

	if ((unsigned) nbytes != sizeof(ex) ||
	    FUNC0(ex))
		return;

	image->pi_type = PMCSTAT_IMAGE_AOUT;

	/* TODO: the rest of a.out processing */

	return;
}