
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int t_Handle ;
struct TYPE_3__ {int flags; int spFill; int spMinBufs; int spBufsCmd; int sp; int bpid; } ;
typedef TYPE_1__ t_BmPool ;
struct bm_buffer {int dummy; } ;


 int ASSERT_COND (int ) ;
 int BMAN_ACQUIRE_FLAG_STOCKPILE ;
 int BMAN_POOL_FLAG_ONLY_RELEASE ;
 int BMAN_POOL_FLAG_STOCKPILE ;
 int BmPortalAcquire (int ,int ,struct bm_buffer*,int) ;
 int IN_RANGE (int,int,int) ;
 scalar_t__ PTR_MOVE (int ,int) ;
 int memcpy (struct bm_buffer*,scalar_t__,int) ;

__attribute__((used)) static int BmPoolAcquire(t_BmPool *p_BmPool,t_Handle h_BmPortal,
            struct bm_buffer *bufs, uint8_t num, uint32_t flags)
{
    ASSERT_COND(IN_RANGE(1, num, 8));
    if (p_BmPool->flags & BMAN_POOL_FLAG_ONLY_RELEASE)
        return 0;


    if (!(p_BmPool->flags & BMAN_POOL_FLAG_STOCKPILE))
        return BmPortalAcquire(h_BmPortal, p_BmPool->bpid, bufs, num);

    if (!(flags & BMAN_ACQUIRE_FLAG_STOCKPILE) &&
            ((p_BmPool->spFill - num) < p_BmPool->spMinBufs))
    {
            p_BmPool->spFill += BmPortalAcquire(h_BmPortal,
                                               p_BmPool->bpid,
                                               (struct bm_buffer *)PTR_MOVE(p_BmPool->sp, sizeof(struct bm_buffer) * (p_BmPool->spFill)),
                                               p_BmPool->spBufsCmd);
    }
    else if (p_BmPool->spFill < num)
        return 0;
    if (!p_BmPool->spFill)
        return 0;
    memcpy(bufs,
           PTR_MOVE(p_BmPool->sp, sizeof(struct bm_buffer) * (p_BmPool->spFill - num)),
           sizeof(struct bm_buffer) * num);
    p_BmPool->spFill -= num;
    return num;
}
