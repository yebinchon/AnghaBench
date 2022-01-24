#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int gl_flags; int /*<<< orphan*/ * (* gl_opendir ) (char*) ;} ;
typedef  TYPE_1__ glob_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  DIR ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int GLOB_ALTDIRFUNC ; 
 int MAXPATHLEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 

__attribute__((used)) static DIR *
FUNC4(Char *str, glob_t *pglob)
{
	char buf[MAXPATHLEN];

	if (!*str)
		FUNC2(buf, ".", sizeof buf);
	else {
		if (FUNC0(str, buf, sizeof(buf)))
			return(NULL);
	}

	if (pglob->gl_flags & GLOB_ALTDIRFUNC)
		return((*pglob->gl_opendir)(buf));

	return(FUNC1(buf));
}