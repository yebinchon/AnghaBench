
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int t_HcFrame ;
struct TYPE_3__ {size_t nextSeqNumLocation; int h_FmPcd; int * seqNum; } ;
typedef TYPE_1__ t_FmHc ;


 int ASSERT_COND (size_t) ;
 int FmPcdLock (int ) ;
 int FmPcdUnlock (int ,int ) ;
 int UNUSED (int *) ;

__attribute__((used)) static __inline__ void PutBuf(t_FmHc *p_FmHc, t_HcFrame *p_Buf, uint32_t seqNum)
{
    uint32_t intFlags;

    UNUSED(p_Buf);

    intFlags = FmPcdLock(p_FmHc->h_FmPcd);
    ASSERT_COND(p_FmHc->nextSeqNumLocation);
    p_FmHc->nextSeqNumLocation--;
    p_FmHc->seqNum[p_FmHc->nextSeqNumLocation] = seqNum;
    FmPcdUnlock(p_FmHc->h_FmPcd, intFlags);
}
