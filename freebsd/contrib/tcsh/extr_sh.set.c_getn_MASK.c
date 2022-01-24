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
typedef  int tcsh_number_t ;
typedef  char Char ;

/* Variables and functions */
 int ERR_BADNUM ; 
 int ERR_NAME ; 
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  STRparseoctal ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

tcsh_number_t
FUNC3(const Char *cp)
{
    tcsh_number_t n;
    int     sign;
    int base;

    if (!cp)			/* PWP: extra error checking */
	FUNC2(ERR_NAME | ERR_BADNUM);

    sign = 0;
    if (cp[0] == '+' && cp[1])
	cp++;
    if (*cp == '-') {
	sign++;
	cp++;
	if (!FUNC0(*cp))
	    FUNC2(ERR_NAME | ERR_BADNUM);
    }

    if (cp[0] == '0' && cp[1] && FUNC1(STRparseoctal))
	base = 8;
    else
	base = 10;

    n = 0;
    while (FUNC0(*cp))
    {
	if (base == 8 && *cp >= '8')
	    FUNC2(ERR_NAME | ERR_BADNUM);
	n = n * base + *cp++ - '0';
    }
    if (*cp)
	FUNC2(ERR_NAME | ERR_BADNUM);
    return (sign ? -n : n);
}