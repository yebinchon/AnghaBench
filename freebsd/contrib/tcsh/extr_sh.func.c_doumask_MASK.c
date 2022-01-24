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
typedef  char Char ;

/* Variables and functions */
 int ERR_MASK ; 
 int ERR_NAME ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (struct command*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

void
FUNC5(Char **v, struct command *c)
{
    Char *cp = v[1];
    int i;

    FUNC1(c);
    if (cp == 0) {
	i = (int)FUNC3(0);
	(void) FUNC3(i);
	FUNC4("%o\n", i);
	return;
    }
    i = 0;
    while (FUNC0(*cp) && *cp != '8' && *cp != '9')
	i = i * 8 + *cp++ - '0';
    if (*cp || i < 0 || i > 0777)
	FUNC2(ERR_NAME | ERR_MASK);
    (void) FUNC3(i);
}