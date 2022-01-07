
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int t_HcFrame ;
struct TYPE_4__ {size_t* seqNum; scalar_t__ nextSeqNumLocation; int ** p_Frm; int dataMemId; } ;
typedef TYPE_1__ t_FmHc ;
typedef int t_Error ;


 int ASSERT_COND (TYPE_1__*) ;
 int E_NO_MEMORY ;
 int E_OK ;
 size_t HC_CMD_POOL_SIZE ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 scalar_t__ XX_MallocSmart (int,int ,int) ;

__attribute__((used)) static t_Error FillBufPool(t_FmHc *p_FmHc)
{
    uint32_t i;

    ASSERT_COND(p_FmHc);

    for (i = 0; i < HC_CMD_POOL_SIZE; i++)
    {





        p_FmHc->p_Frm[i] = (t_HcFrame *)XX_MallocSmart(sizeof(t_HcFrame),
                                                       p_FmHc->dataMemId,
                                                       16);

        if (!p_FmHc->p_Frm[i])
            RETURN_ERROR(MAJOR, E_NO_MEMORY, ("FM HC frames!"));
    }


    for (i = 0; i < HC_CMD_POOL_SIZE; i++)
    {
        p_FmHc->seqNum[i] = i;
    }
    p_FmHc->nextSeqNumLocation = 0;

    return E_OK;
}
