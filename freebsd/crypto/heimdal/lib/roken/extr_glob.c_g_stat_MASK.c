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
struct stat {int dummy; } ;
struct TYPE_3__ {int gl_flags; int (* gl_stat ) (char*,struct stat*) ;} ;
typedef  TYPE_1__ glob_t ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int GLOB_ALTDIRFUNC ; 
 int MaxPathLen ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (char*,struct stat*) ; 
 int FUNC2 (char*,struct stat*) ; 

__attribute__((used)) static int
FUNC3(Char *fn, struct stat *sb, glob_t *pglob)
{
	char buf[MaxPathLen];

	FUNC0(fn, buf);
	if (pglob->gl_flags & GLOB_ALTDIRFUNC)
		return((*pglob->gl_stat)(buf, sb));
	return(FUNC1(buf, sb));
}