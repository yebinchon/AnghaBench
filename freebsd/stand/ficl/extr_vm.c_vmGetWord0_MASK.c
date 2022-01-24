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
typedef  int /*<<< orphan*/  STRINGINFO ;
typedef  int /*<<< orphan*/  FICL_VM ;
typedef  scalar_t__ FICL_UNS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char) ; 
 char* FUNC3 (char*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

STRINGINFO FUNC7(FICL_VM *pVM)
{
    char *pSrc      = FUNC4(pVM);
    char *pEnd      = FUNC5(pVM);
    STRINGINFO si;
    FICL_UNS count = 0;
    char ch = 0;

    pSrc = FUNC3(pSrc, pEnd);
    FUNC1(si, pSrc);

/*
    for (ch = *pSrc; (pEnd != pSrc) && !isspace(ch); ch = *++pSrc)
    {
        count++;
    }
*/

    /* Changed to make Purify happier.  --lch */
    for (;;)
    {
        if (pEnd == pSrc)
            break;
        ch = *pSrc;
        if (FUNC2(ch))
            break;
        count++;
        pSrc++;
    }

    FUNC0(si, count);

    if ((pEnd != pSrc) && FUNC2(ch))    /* skip one trailing delimiter */
        pSrc++;

    FUNC6(pVM, pSrc);

    return si;
}