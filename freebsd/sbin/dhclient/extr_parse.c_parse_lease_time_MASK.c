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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int NUMBER ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,char*,int,int) ; 
 int FUNC1 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(FILE *cfile, time_t *timep)
{
	char *val;
	int token;

	token = FUNC1(&val, cfile);
	if (token != NUMBER) {
		FUNC4("Expecting numeric lease time");
		FUNC5(cfile);
		return;
	}
	FUNC0((unsigned char *)timep, val, 10, 32);
	/* Unswap the number - convert_num returns stuff in NBO. */
	*timep = FUNC2(*timep); /* XXX */

	FUNC3(cfile);
}