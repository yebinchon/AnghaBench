#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_4__ {int /*<<< orphan*/  el_lgcyconv; } ;
typedef  TYPE_1__ EditLine ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const**) ; 
 int FUNC2 (TYPE_1__*,int,int /*<<< orphan*/  const**) ; 

int
FUNC3(EditLine *el, int argc, const char *argv[])
{
	int ret;
	const wchar_t **wargv;

	wargv = (void *)FUNC0(argc, argv, &el->el_lgcyconv);
	if (!wargv)
		return -1;
	ret = FUNC2(el, argc, wargv);
	FUNC1(wargv);

	return ret;
}