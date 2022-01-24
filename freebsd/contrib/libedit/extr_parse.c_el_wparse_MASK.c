#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
struct TYPE_6__ {int (* func ) (TYPE_1__*,int,char const**) ;int /*<<< orphan*/ * name; } ;
struct TYPE_5__ {int /*<<< orphan*/  el_prog; } ;
typedef  TYPE_1__ EditLine ;

/* Variables and functions */
 TYPE_4__* cmds ; 
 char* FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (TYPE_1__*,int,char const**) ; 
 char* FUNC4 (char const*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 

int
FUNC7(EditLine *el, int argc, const wchar_t *argv[])
{
	const wchar_t *ptr;
	int i;

	if (argc < 1)
		return -1;
	ptr = FUNC4(argv[0], L':');
	if (ptr != NULL) {
		wchar_t *tprog;
		size_t l;

		if (ptr == argv[0])
			return 0;
		l = (size_t)(ptr - argv[0]);
		tprog = FUNC0(l + 1, sizeof(*tprog));
		if (tprog == NULL)
			return 0;
		(void) FUNC6(tprog, argv[0], l);
		tprog[l] = '\0';
		ptr++;
		l = (size_t)FUNC2(el->el_prog, tprog);
		FUNC1(tprog);
		if (!l)
			return 0;
	} else
		ptr = argv[0];

	for (i = 0; cmds[i].name != NULL; i++)
		if (FUNC5(cmds[i].name, ptr) == 0) {
			i = (*cmds[i].func) (el, argc, argv);
			return -i;
		}
	return -1;
}