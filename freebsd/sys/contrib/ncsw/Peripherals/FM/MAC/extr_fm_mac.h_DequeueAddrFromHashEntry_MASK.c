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
struct TYPE_7__ {int /*<<< orphan*/  p_Next; } ;
typedef  TYPE_1__ t_List ;
struct TYPE_8__ {int /*<<< orphan*/  node; } ;
typedef  TYPE_2__ t_EthHashEntry ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static __inline__ t_EthHashEntry *FUNC3(t_List *p_AddrLst)
{
   t_EthHashEntry *p_HashEntry = NULL;
    if (!FUNC2(p_AddrLst))
    {
        p_HashEntry = FUNC0(p_AddrLst->p_Next);
        FUNC1(&p_HashEntry->node);
    }
    return p_HashEntry;
}