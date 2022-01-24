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
struct TYPE_4__ {int /*<<< orphan*/  from_fp; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_1__ CSC ;

/* Variables and functions */
 int* CSCOPE_PROMPT ; 
 int EOF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(SCR *sp, CSC *csc)
{
	int ch;

#define	CSCOPE_PROMPT		">> "
	for (;;) {
		while ((ch =
		    FUNC0(csc->from_fp)) != EOF && ch != CSCOPE_PROMPT[0]);
		if (ch == EOF) {
			FUNC1(sp, csc, 0);
			return (1);
		}
		if (FUNC0(csc->from_fp) != CSCOPE_PROMPT[1])
			continue;
		if (FUNC0(csc->from_fp) != CSCOPE_PROMPT[2])
			continue;
		break;
	}
	return (0);
}