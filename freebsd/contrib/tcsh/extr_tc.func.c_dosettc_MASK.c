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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GotTermCaps ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct command*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfree ; 

void
FUNC7(Char **v, struct command *c)
{
    char    *tv[2];

    FUNC2(c);
    if (!GotTermCaps)
	FUNC0();

    tv[0] = FUNC6(FUNC5(v[1]));
    FUNC3(tv[0], xfree);
    tv[1] = FUNC6(FUNC5(v[2]));
    FUNC3(tv[1], xfree);
    FUNC1(tv[0], tv[1]);
    FUNC4(tv[0]);
}