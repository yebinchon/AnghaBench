
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int t_HcFrame ;
struct TYPE_4__ {size_t nextSeqNumLocation; size_t* seqNum; int ** p_Frm; int h_FmPcd; } ;
typedef TYPE_1__ t_FmHc ;


 int ASSERT_COND (TYPE_1__*) ;
 size_t FmPcdLock (int ) ;
 int FmPcdUnlock (int ,size_t) ;
 size_t HC_CMD_POOL_SIZE ;

__attribute__((used)) static __inline__ t_HcFrame * GetBuf(t_FmHc *p_FmHc, uint32_t *p_SeqNum)
{
    uint32_t intFlags;

    ASSERT_COND(p_FmHc);

    intFlags = FmPcdLock(p_FmHc->h_FmPcd);

    if (p_FmHc->nextSeqNumLocation == HC_CMD_POOL_SIZE)
    {

        FmPcdUnlock(p_FmHc->h_FmPcd, intFlags);
        return ((void*)0);
    }

    *p_SeqNum = p_FmHc->seqNum[p_FmHc->nextSeqNumLocation];
    p_FmHc->nextSeqNumLocation++;

    FmPcdUnlock(p_FmHc->h_FmPcd, intFlags);
    return p_FmHc->p_Frm[*p_SeqNum];
}
