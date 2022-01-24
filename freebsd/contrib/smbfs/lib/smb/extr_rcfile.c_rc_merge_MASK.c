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
struct rcfile {int /*<<< orphan*/ * rf_f; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (char const*,char*,struct rcfile**) ; 
 int /*<<< orphan*/  FUNC3 (struct rcfile*) ; 

int
FUNC4(const char *filename, struct rcfile **rcfile)
{
	struct rcfile *rcp = *rcfile;
	FILE *f, *t;
	
	if (rcp == NULL) {
		return FUNC2(filename, "r", rcfile);
	}
	f = FUNC1 (filename, "r");
	if (f == NULL)
		return errno;
	t = rcp->rf_f;
	rcp->rf_f = f;
	FUNC3(rcp);
	rcp->rf_f = t;
	FUNC0(f);
	return 0;
}