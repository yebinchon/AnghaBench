#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_4__** table; scalar_t__ size; } ;
struct TYPE_15__ {scalar_t__ cp; } ;
struct TYPE_18__ {TYPE_2__ tib; int /*<<< orphan*/  pSys; } ;
struct TYPE_17__ {int nName; struct TYPE_17__* link; int /*<<< orphan*/  name; TYPE_1__* param; } ;
struct TYPE_16__ {scalar_t__ cp; } ;
struct TYPE_14__ {scalar_t__ p; } ;
typedef  TYPE_3__ STRINGINFO ;
typedef  TYPE_4__ FICL_WORD ;
typedef  TYPE_5__ FICL_VM ;
typedef  int /*<<< orphan*/  FICL_UNS ;
typedef  TYPE_6__ FICL_HASH ;

/* Variables and functions */
 int FICL_FALSE ; 
 scalar_t__ FICL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list_name ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,scalar_t__) ; 

int FUNC5(FICL_VM *pVM, STRINGINFO si)
{
    int i;
    FICL_HASH *pHash;
    FICL_WORD *pFW = FUNC1(pVM->pSys, list_name);

    /* 
    ** Make sure we found the prefix dictionary - otherwise silently fail
    ** If forth-wordlist is not in the search order, we won't find the prefixes.
    */
    if (!pFW)
        return FICL_FALSE;

    pHash = (FICL_HASH *)(pFW->param[0].p);
    /*
    ** Walk the list looking for a match with the beginning of the incoming token
    */
    for (i = 0; i < (int)pHash->size; i++)
    {
        pFW = pHash->table[i];
        while (pFW != NULL)
        {
            int n;
            n = pFW->nName;
            /*
            ** If we find a match, adjust the TIB to give back the non-prefix characters
            ** and execute the prefix word.
            */
            if (!FUNC2(FUNC0(si), pFW->name, (FICL_UNS)n))
            {
                /* (sadler) fixed off-by-one error when the token has no trailing space in the TIB */
				FUNC4(pVM, si.cp + n - pVM->tib.cp );
                FUNC3(pVM, pFW);

                return (int)FICL_TRUE;
            }
            pFW = pFW->link;
        }
    }

    return FICL_FALSE;
}