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
 int /*<<< orphan*/  FUNC0 (char**,char*,char const*,char const*) ; 
 char** env ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int num_env ; 
 size_t FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char*,char const*,size_t) ; 

void
FUNC6(const char *var, const char *value)
{
    int i;
    char *str;
    FUNC0(&str, "%s=%s", var, value);
    if(str == NULL)
	FUNC1(1, "Out of memory!");
    for(i = 0; i < num_env; i++)
	if(FUNC5(env[i], var, FUNC4(var)) == 0 &&
	   env[i][FUNC4(var)] == '='){
	    FUNC3(env[i]);
	    env[i] = str;
	    return;
	}

    FUNC2(str);
}