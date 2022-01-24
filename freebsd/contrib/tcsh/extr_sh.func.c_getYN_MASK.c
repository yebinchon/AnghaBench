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
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  SHIN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

int
FUNC5(const char *prompt)
{
    int doit;
    char c;

    FUNC4("%s", prompt);
    FUNC1();
    (void) FUNC2(SHIN, &c, sizeof(c));
    /* 
     * Perhaps we should use the yesexpr from the
     * actual locale
     */
    doit = (FUNC3(FUNC0(22, 14, "Yy"), c) != NULL);
    while (c != '\n' && FUNC2(SHIN, &c, sizeof(c)) == sizeof(c))
	continue;
    return doit;
}