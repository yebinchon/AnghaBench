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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

STRINGINFO FUNC6(FICL_VM *pVM, char delim, char fSkipLeading)
{
    STRINGINFO si;
    char *pSrc      = FUNC3(pVM);
    char *pEnd      = FUNC4(pVM);
    char ch;

    if (fSkipLeading)
    {                       /* skip lead delimiters */
        while ((pSrc != pEnd) && (*pSrc == delim))
            pSrc++;
    }

    FUNC2(si, pSrc);    /* mark start of text */

    for (ch = *pSrc; (pSrc != pEnd)
                  && (ch != delim)
                  && (ch != '\r') 
                  && (ch != '\n'); ch = *++pSrc)
    {
        ;                   /* find next delimiter or end of line */
    }

                            /* set length of result */
    FUNC1(si, pSrc - FUNC0(si));

    if ((pSrc != pEnd) && (*pSrc == delim))     /* gobble trailing delimiter */
        pSrc++;

    FUNC5(pVM, pSrc);
    return si;
}