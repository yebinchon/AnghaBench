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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static char *
FUNC5(char *prompt)
{
    char buf[BUFSIZ];
    FUNC2 ("%s", prompt);
    FUNC0 (stdout);
    if(FUNC1(buf, sizeof(buf), stdin) == NULL)
	return NULL;
    if (buf[FUNC4(buf) - 1] == '\n')
	buf[FUNC4(buf) - 1] = '\0';
    return FUNC3(buf);
}