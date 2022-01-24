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
typedef  char Char ;

/* Variables and functions */
 char** STR_environ ; 
 int FUNC0 (char*,char*) ; 
 size_t FUNC1 (char*) ; 

Char *
FUNC2(Char *str)
{
    Char  **var;
    size_t  len;
    int     res;

    len = FUNC1(str);
    /* Search the STR_environ for the entry matching str. */
    for (var = STR_environ; var != NULL && *var != NULL; var++)
	if (FUNC1(*var) >= len && (*var)[len] == '=') {
	  /* Temporarily terminate the string so we can copy the variable
	     name. */
	    (*var)[len] = '\0';
	    res = FUNC0(*var, str);
	    /* Restore the '=' and return a pointer to the value of the
	       environment variable. */
	    (*var)[len] = '=';
	    if (res == 0)
		return (&((*var)[len + 1]));
	}
    return (NULL);
}