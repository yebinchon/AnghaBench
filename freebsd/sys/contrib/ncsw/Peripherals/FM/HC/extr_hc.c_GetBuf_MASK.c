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
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  t_HcFrame ;
struct TYPE_4__ {size_t nextSeqNumLocation; size_t* seqNum; int /*<<< orphan*/ ** p_Frm; int /*<<< orphan*/  h_FmPcd; } ;
typedef  TYPE_1__ t_FmHc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 size_t HC_CMD_POOL_SIZE ; 

__attribute__((used)) static __inline__ t_HcFrame * FUNC3(t_FmHc *p_FmHc, uint32_t *p_SeqNum)
{
    uint32_t    intFlags;

    FUNC0(p_FmHc);

    intFlags = FUNC1(p_FmHc->h_FmPcd);

    if (p_FmHc->nextSeqNumLocation == HC_CMD_POOL_SIZE)
    {
        /* No more buffers */
        FUNC2(p_FmHc->h_FmPcd, intFlags);
        return NULL;
    }

    *p_SeqNum = p_FmHc->seqNum[p_FmHc->nextSeqNumLocation];
    p_FmHc->nextSeqNumLocation++;

    FUNC2(p_FmHc->h_FmPcd, intFlags);
    return p_FmHc->p_Frm[*p_SeqNum];
}