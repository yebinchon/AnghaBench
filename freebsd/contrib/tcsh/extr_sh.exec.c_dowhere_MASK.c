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
struct command {int dummy; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  STR1 ; 
 int /*<<< orphan*/  STRautorehash ; 
 int /*<<< orphan*/  STRstatus ; 
 int /*<<< orphan*/  FUNC0 (struct command*) ; 
 int /*<<< orphan*/  VAR_READWRITE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(Char **v, struct command *c)
{
    int found = 1;
    FUNC0(c);

    if (FUNC1(STRautorehash))
	FUNC2(NULL, NULL);
    for (v++; *v; v++)
	found &= FUNC3(*v, 1);
    /* Make status nonzero if any command is not found. */
    if (!found)
	FUNC4(STRstatus, STR1, VAR_READWRITE);
}