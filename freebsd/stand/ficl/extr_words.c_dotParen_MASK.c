#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* pad; } ;
typedef  TYPE_1__ FICL_VM ;

/* Variables and functions */
 char* FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC4(FICL_VM *pVM)
{
    char *pSrc      = FUNC0(pVM);
    char *pEnd      = FUNC1(pVM);
    char *pDest     = pVM->pad;
    char ch;

    /*
    ** Note: the standard does not want leading spaces skipped (apparently)
    */
    for (ch = *pSrc; (pEnd != pSrc) && (ch != ')'); ch = *++pSrc)
        *pDest++ = ch;

    *pDest = '\0';
    if ((pEnd != pSrc) && (ch == ')'))
        pSrc++;

    FUNC2(pVM, pVM->pad, 0);
    FUNC3(pVM, pSrc);
        
    return;
}