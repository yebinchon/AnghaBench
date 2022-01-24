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
typedef  scalar_t__ wchar_t ;
typedef  int /*<<< orphan*/  EditLine ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rl_instream ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
/*ARGSUSED*/
FUNC2(EditLine *el __attribute__((__unused__)), wchar_t *c)
{
	int i;

	i = FUNC0)(rl_instream);
	if (i == -1)
		return 0;
	*c = (wchar_t)i;
	return 1;
}