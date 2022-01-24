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
typedef  int /*<<< orphan*/  fn ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (char*,char***) ; 
 int /*<<< orphan*/  s1 ; 
 int /*<<< orphan*/  s2 ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

int
FUNC6(int argc, char **argv)
{
    char **env = NULL;
    int count = 0;
    char fn[MAXPATHLEN];
    int error = 0;

    FUNC1(fn, sizeof(fn));

    FUNC5(fn, s1);
    count = FUNC2(fn, &env);
    if(count != 3) {
	FUNC4("test 1: variable count %d != 3", count);
	error++;
    }

    FUNC5(fn, s2);
    count = FUNC2(fn, &env);
    if(count != 1) {
	FUNC4("test 2: variable count %d != 1", count);
	error++;
    }

    FUNC3(fn);
    count = FUNC2(fn, &env);
    if(count != 0) {
	FUNC4("test 3: variable count %d != 0", count);
	error++;
    }
    for(count = 0; env && env[count]; count++);
    if(count != 3) {
	FUNC4("total variable count %d != 3", count);
	error++;
    }
    FUNC0(env);


    return error;
}