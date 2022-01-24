#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char** argv; char** cargv; int cols; int /*<<< orphan*/ * gp; } ;
typedef  TYPE_1__ SCR ;
typedef  int /*<<< orphan*/  GS ;
typedef  int /*<<< orphan*/  EXCMD ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (char*) ; 

int
FUNC5(SCR *sp, EXCMD *cmdp)
{
	GS *gp;
	int cnt, col, len, sep;
	char **ap;

	if (sp->argv == NULL) {
		(void)FUNC3(sp, M_ERR, "114|No file list to display");
		return (0);
	}

	gp = sp->gp;
	col = len = sep = 0;
	for (cnt = 1, ap = sp->argv; *ap != NULL; ++ap) {
		col += len = FUNC4(*ap) + sep + (ap == sp->cargv ? 2 : 0);
		if (col >= sp->cols - 1) {
			col = len;
			sep = 0;
			(void)FUNC2(sp, "\n");
		} else if (cnt != 1) {
			sep = 1;
			(void)FUNC2(sp, " ");
		}
		++cnt;

		(void)FUNC1(sp, "%s%s%s", ap == sp->cargv ? "[" : "",
		    *ap, ap == sp->cargv ? "]" : "");
		if (FUNC0(sp))
			break;
	}
	(void)FUNC2(sp, "\n");
	return (0);
}