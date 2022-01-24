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
typedef  size_t u_short ;

/* Variables and functions */
 size_t FUNC0 (char**) ; 
 int /*<<< orphan*/  LIB_BUFLENGTH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,size_t) ; 
 char** symb ; 

const char *
FUNC3(
	u_short token
	)
{
	char *name;

	if (token < FUNC0(symb) && symb[token] != NULL) {
		name = symb[token];
	} else {
		FUNC1(name);
		FUNC2(name, LIB_BUFLENGTH, "%d", token);
	}

	return name;
}