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
typedef  int /*<<< orphan*/  Cell ;
typedef  int /*<<< orphan*/  Array ;

/* Variables and functions */
 int /*<<< orphan*/  STR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*,double,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

char *FUNC5(int n)	/* get ARGV[n] */
{
	Cell *x;
	char *s, temp[50];
	extern Array *ARGVtab;

	FUNC4(temp, "%d", n);
	if (FUNC2(temp, ARGVtab) == NULL)
		return NULL;
	x = FUNC3(temp, "", 0.0, STR, ARGVtab);
	s = FUNC1(x);
	   FUNC0( ("getargv(%d) returns |%s|\n", n, s) );
	return s;
}