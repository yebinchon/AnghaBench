
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int t_Handle ;
typedef scalar_t__ t_Error ;
struct TYPE_3__ {int flags; int spFill; int spMaxBufs; int spBufsCmd; int sp; int bpid; } ;
typedef TYPE_1__ t_BmPool ;
struct bm_buffer {int dummy; } ;


 int ASSERT_COND (int) ;
 int BMAN_POOL_FLAG_NO_RELEASE ;
 int BMAN_POOL_FLAG_STOCKPILE ;
 scalar_t__ BmPortalRelease (int ,int ,struct bm_buffer*,int,int ) ;
 scalar_t__ ERROR_CODE (int ) ;
 int E_INVALID_VALUE ;
 scalar_t__ E_OK ;
 scalar_t__ PTR_MOVE (int ,int) ;
 int memcpy (scalar_t__,struct bm_buffer*,int) ;

__attribute__((used)) static t_Error BmPoolRelease(t_BmPool *p_BmPool,
                             t_Handle h_BmPortal,
                             struct bm_buffer *bufs,
                             uint8_t num,
                             uint32_t flags)
{
    ASSERT_COND(num && (num <= 8));
    if (p_BmPool->flags & BMAN_POOL_FLAG_NO_RELEASE)
        return ERROR_CODE(E_INVALID_VALUE);


    if (!(p_BmPool->flags & BMAN_POOL_FLAG_STOCKPILE))
        return BmPortalRelease(h_BmPortal, p_BmPool->bpid, bufs, num, flags);
    while (num)
    {

        if ((p_BmPool->spFill + num) <= p_BmPool->spMaxBufs)
        {
            memcpy(PTR_MOVE(p_BmPool->sp, sizeof(struct bm_buffer) * (p_BmPool->spFill)),
                   bufs,
                   sizeof(struct bm_buffer) * num);
            p_BmPool->spFill += num;
            num = 0;
        }
        else

        {
            t_Error ret = BmPortalRelease(h_BmPortal,
                                          p_BmPool->bpid,
                                          (struct bm_buffer *)PTR_MOVE(p_BmPool->sp, sizeof(struct bm_buffer) * (p_BmPool->spFill - p_BmPool->spBufsCmd)),
                                          p_BmPool->spBufsCmd,
                                          flags);
            if (ret)
                return (num ? ret : E_OK);
            p_BmPool->spFill -= p_BmPool->spBufsCmd;
        }
    }

    return E_OK;
}
