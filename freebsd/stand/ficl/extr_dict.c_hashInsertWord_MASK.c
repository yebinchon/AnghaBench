#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int size; int hash; struct TYPE_6__* link; struct TYPE_6__** table; } ;
typedef  TYPE_1__ FICL_WORD ;
typedef  TYPE_1__ FICL_HASH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(FICL_HASH *pHash, FICL_WORD *pFW)
{
    FICL_WORD **pList;

    FUNC0(pHash);
    FUNC0(pFW);

    if (pHash->size == 1)
    {
        pList = pHash->table;
    }
    else
    {
        pList = pHash->table + (pFW->hash % pHash->size);
    }

    pFW->link = *pList;
    *pList = pFW;
    return;
}