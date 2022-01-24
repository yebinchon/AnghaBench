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

/* Variables and functions */
 int /*<<< orphan*/  env ; 
 char* FUNC0 (char*) ; 
 int FUNC1 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static int
FUNC3(void)
{
    char *prog, *argv0;
    prog = FUNC0("login_program");
    if(prog == NULL)
	return 0;
    argv0 = FUNC2(prog, '/');

    if(argv0)
	argv0++;
    else
	argv0 = prog;

    return FUNC1(prog, argv0, NULL, env);
}