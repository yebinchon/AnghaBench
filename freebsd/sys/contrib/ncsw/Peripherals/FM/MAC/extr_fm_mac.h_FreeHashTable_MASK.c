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
struct TYPE_7__ {int size; struct TYPE_7__* p_Lsts; } ;
typedef  TYPE_1__ t_EthHashEntry ;
typedef  TYPE_1__ t_EthHash ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static __inline__ void FUNC2(t_EthHash *p_Hash)
{
    t_EthHashEntry  *p_HashEntry;
    int             i = 0;

    if (p_Hash)
    {
        if  (p_Hash->p_Lsts)
        {
            for (i=0; i<p_Hash->size; i++)
            {
                p_HashEntry = FUNC0(&p_Hash->p_Lsts[i]);
                while (p_HashEntry)
                {
                    FUNC1(p_HashEntry);
                    p_HashEntry = FUNC0(&p_Hash->p_Lsts[i]);
                }
            }

            FUNC1(p_Hash->p_Lsts);
        }

        FUNC1(p_Hash);
    }
}