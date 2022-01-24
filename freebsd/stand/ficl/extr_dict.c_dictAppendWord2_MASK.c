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
typedef  int UNS8 ;
struct TYPE_8__ {scalar_t__ here; TYPE_1__* smudge; } ;
struct TYPE_7__ {int flags; char nName; char* name; scalar_t__ param; int /*<<< orphan*/  code; int /*<<< orphan*/  hash; } ;
typedef  int /*<<< orphan*/  STRINGINFO ;
typedef  TYPE_1__ FICL_WORD ;
typedef  TYPE_2__ FICL_DICT ;
typedef  scalar_t__ FICL_COUNT ;
typedef  int /*<<< orphan*/  FICL_CODE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FW_SMUDGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

FICL_WORD *FUNC5(FICL_DICT *pDict, 
                           STRINGINFO si, 
                           FICL_CODE pCode, 
                           UNS8 flags)
{
    FICL_COUNT len  = (FICL_COUNT)FUNC0(si);
    char *pName;
    FICL_WORD *pFW;

    FUNC3(TRUE);

    /*
    ** NOTE: dictCopyName advances "here" as a side-effect.
    ** It must execute before pFW is initialized.
    */
    pName         = FUNC1(pDict, si);
    pFW           = (FICL_WORD *)pDict->here;
    pDict->smudge = pFW;
    pFW->hash     = FUNC4(si);
    pFW->code     = pCode;
    pFW->flags    = (UNS8)(flags | FW_SMUDGE);
    pFW->nName    = (char)len;
    pFW->name     = pName;
    /*
    ** Point "here" to first cell of new word's param area...
    */
    pDict->here   = pFW->param;

    if (!(flags & FW_SMUDGE))
        FUNC2(pDict);

    FUNC3(FALSE);
    return pFW;
}