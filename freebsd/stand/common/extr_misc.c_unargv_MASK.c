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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 

char *
FUNC3(int argc, char *argv[])
{
    size_t	hlong;
    int		i;
    char	*cp;

    for (i = 0, hlong = 0; i < argc; i++)
	hlong += FUNC2(argv[i]) + 2;

    if(hlong == 0)
	return(NULL);

    cp = FUNC0(hlong);
    cp[0] = 0;
    for (i = 0; i < argc; i++) {
	FUNC1(cp, argv[i]);
	if (i < (argc - 1))
	  FUNC1(cp, " ");
    }
	  
    return(cp);
}