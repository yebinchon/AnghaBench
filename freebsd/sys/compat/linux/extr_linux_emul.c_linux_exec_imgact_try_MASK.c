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
struct image_params {char* interpreter_name; TYPE_1__* args; int /*<<< orphan*/  proc; scalar_t__ image_header; } ;
struct TYPE_2__ {char* fname_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 short const SHELLMAGIC ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int FUNC1 (struct image_params*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct image_params *imgp)
{
	const char *head = (const char *)imgp->image_header;
	char *rpath;
	int error = -1;

	/*
	 * The interpreter for shell scripts run from a Linux binary needs
	 * to be located in /compat/linux if possible in order to recursively
	 * maintain Linux path emulation.
	 */
	if (((const short *)head)[0] == SHELLMAGIC) {
		/*
		 * Run our normal shell image activator.  If it succeeds attempt
		 * to use the alternate path for the interpreter.  If an
		 * alternate path is found, use our stringspace to store it.
		 */
		if ((error = FUNC1(imgp)) == 0) {
			FUNC2(FUNC0(imgp->proc),
			    imgp->interpreter_name, UIO_SYSSPACE, &rpath, 0,
			    AT_FDCWD);
			if (rpath != NULL)
				imgp->args->fname_buf =
				    imgp->interpreter_name = rpath;
		}
	}
	return (error);
}