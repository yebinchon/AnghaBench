#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t count; scalar_t__* text; } ;
struct TYPE_7__ {scalar_t__ pad; } ;
typedef  int /*<<< orphan*/  STRINGINFO ;
typedef  TYPE_1__ FICL_VM ;
typedef  TYPE_2__ FICL_STRING ;
typedef  size_t FICL_COUNT ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int nPAD ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char,int) ; 

__attribute__((used)) static void FUNC9(FICL_VM *pVM)
{
    FICL_STRING *sp;
    char delim;
    STRINGINFO   si;
#if FICL_ROBUST > 1
    vmCheckStack(pVM,1,1);
#endif

    sp = (FICL_STRING *)pVM->pad;
    delim = (char)FUNC0();
    si = FUNC8(pVM, delim, 1);

    if (FUNC2(si) > nPAD-1)
        FUNC4(si, nPAD-1);

    sp->count = (FICL_COUNT)FUNC2(si);
    FUNC6(sp->text, FUNC3(si), FUNC2(si));
    /*#$-GUY CHANGE: I added this.-$#*/
    sp->text[sp->count] = 0;
    FUNC5(sp->text, " ");

    FUNC1(sp);
    return;
}