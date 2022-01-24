#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int base; scalar_t__ state; } ;
typedef  int /*<<< orphan*/  STRINGINFO ;
typedef  TYPE_1__ FICL_VM ;
typedef  unsigned int FICL_INT ;
typedef  int FICL_COUNT ;

/* Variables and functions */
 scalar_t__ COMPILE ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 char FUNC5 (unsigned int) ; 

int FUNC6(FICL_VM *pVM, STRINGINFO si)
{
    FICL_INT accum  = 0;
    char isNeg      = FALSE;
	char hasDP      = FALSE;
    unsigned base   = pVM->base;
    char *cp        = FUNC2(si);
    FICL_COUNT count= (FICL_COUNT)FUNC1(si);
    unsigned ch;
    unsigned digit;

    if (count > 1)
    {
        switch (*cp)
        {
        case '-':
            cp++;
            count--;
            isNeg = TRUE;
            break;
        case '+':
            cp++;
            count--;
            isNeg = FALSE;
            break;
        default:
            break;
        }
    }

    if ((count > 0) && (cp[count-1] == '.')) /* detect & remove trailing decimal */
    {
        hasDP = TRUE;
        count--;
    }

    if (count == 0)        /* detect "+", "-", ".", "+." etc */
        return FALSE;

    while ((count--) && ((ch = *cp++) != '\0'))
    {
        if (!FUNC3(ch))
            return FALSE;

        digit = ch - '0';

        if (digit > 9)
            digit = FUNC5(ch) - 'a' + 10;

        if (digit >= base)
            return FALSE;

        accum = accum * base + digit;
    }

	if (hasDP)		/* simple (required) DOUBLE support */
		FUNC0(0);

    if (isNeg)
        accum = -accum;

    FUNC0(accum);
    if (pVM->state == COMPILE)
        FUNC4(pVM);

    return TRUE;
}