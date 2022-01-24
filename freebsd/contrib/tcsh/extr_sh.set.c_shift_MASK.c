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
struct varent {scalar_t__* vec; } ;
struct command {int dummy; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int ERR_NAME ; 
 int ERR_NOMORE ; 
 int /*<<< orphan*/ * STRargv ; 
 int /*<<< orphan*/  FUNC0 (struct command*) ; 
 struct varent* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(Char **v, struct command *c)
{
    struct varent *argv;
    Char *name;

    FUNC0(c);
    v++;
    name = *v;
    if (name == 0)
	name = STRargv;
    else
	(void) FUNC4(name);
    argv = FUNC1(name);
    if (argv == NULL || argv->vec == NULL)
	FUNC5(name);
    if (argv->vec[0] == 0)
	FUNC3(ERR_NAME | ERR_NOMORE);
    FUNC2(argv->vec, 1);
    FUNC6(name);
}