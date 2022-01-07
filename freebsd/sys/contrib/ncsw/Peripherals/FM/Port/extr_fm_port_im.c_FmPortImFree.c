
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_12__ {int h_BufferPool; int (* f_PutBuf ) (int ,int *,int ) ;int f_VirtToPhys; int f_PhysToVirt; } ;
struct TYPE_13__ {size_t currBdId; scalar_t__ p_BdRing; int * p_BdShadow; TYPE_4__* p_FmPortImPram; int h_FmMuram; TYPE_2__ rxPool; } ;
struct TYPE_11__ {int gen; } ;
struct TYPE_14__ {scalar_t__ portType; TYPE_3__ im; int fmanCtrlEventId; int h_Fm; TYPE_1__ rxQd; scalar_t__ exceptions; int polling; } ;
typedef TYPE_4__ t_FmPort ;


 int ASSERT_COND (TYPE_4__*) ;
 int BD_GET (size_t) ;
 int BD_R_E ;
 int BD_STATUS_AND_LENGTH (int ) ;
 int BD_STATUS_AND_LENGTH_SET (int ,int ) ;
 int * BdBufferGet (int ,int ) ;
 int BdBufferSet (int ,int ,int *) ;
 int FM_MURAM_FreeMem (int ,TYPE_4__*) ;
 int FmFreeFmanCtrlEventReg (int ,int ) ;
 int FmPortImRx (TYPE_4__*) ;
 int FmSetFmanCtrlIntr (int ,int ,int ) ;
 int FmUnregisterFmanCtrlIntr (int ,int ) ;
 size_t GetNextBdId (TYPE_4__*,size_t) ;
 int TxConf (TYPE_4__*,int ) ;
 int WRITE_UINT16 (int ,int ) ;
 int XX_Free (int *) ;
 int XX_FreeSmart (scalar_t__) ;
 scalar_t__ e_FM_PORT_TYPE_RX ;
 scalar_t__ e_FM_PORT_TYPE_RX_10G ;
 int e_TX_CONF_TYPE_FLUSH ;
 int stub1 (int ,int *,int ) ;

void FmPortImFree(t_FmPort *p_FmPort)
{
    uint32_t bdStatus;
    uint8_t *p_CurData;

    ASSERT_COND(p_FmPort);
    ASSERT_COND(p_FmPort->im.p_FmPortImPram);

    if ((p_FmPort->portType == e_FM_PORT_TYPE_RX) ||
        (p_FmPort->portType == e_FM_PORT_TYPE_RX_10G))
    {
        if (!p_FmPort->polling || p_FmPort->exceptions)
        {

            FmSetFmanCtrlIntr(p_FmPort->h_Fm, p_FmPort->fmanCtrlEventId, 0);

            FmFreeFmanCtrlEventReg(p_FmPort->h_Fm, p_FmPort->fmanCtrlEventId);

            WRITE_UINT16(p_FmPort->im.p_FmPortImPram->rxQd.gen, 0);

            FmUnregisterFmanCtrlIntr(p_FmPort->h_Fm, p_FmPort->fmanCtrlEventId);
        }

        FmPortImRx(p_FmPort);


        bdStatus = BD_STATUS_AND_LENGTH(BD_GET(p_FmPort->im.currBdId));

        while (bdStatus & BD_R_E)
        {
            p_CurData = BdBufferGet(p_FmPort->im.rxPool.f_PhysToVirt, BD_GET(p_FmPort->im.currBdId));

            BdBufferSet(p_FmPort->im.rxPool.f_VirtToPhys, BD_GET(p_FmPort->im.currBdId), ((void*)0));
            BD_STATUS_AND_LENGTH_SET(BD_GET(p_FmPort->im.currBdId), 0);

            p_FmPort->im.rxPool.f_PutBuf(p_FmPort->im.rxPool.h_BufferPool,
                                         p_CurData,
                                         p_FmPort->im.p_BdShadow[p_FmPort->im.currBdId]);

            p_FmPort->im.currBdId = GetNextBdId(p_FmPort, p_FmPort->im.currBdId);
            bdStatus = BD_STATUS_AND_LENGTH(BD_GET(p_FmPort->im.currBdId));
        }
    }
    else
        TxConf(p_FmPort, e_TX_CONF_TYPE_FLUSH);

    FM_MURAM_FreeMem(p_FmPort->im.h_FmMuram, p_FmPort->im.p_FmPortImPram);

    if (p_FmPort->im.p_BdShadow)
        XX_Free(p_FmPort->im.p_BdShadow);

    if (p_FmPort->im.p_BdRing)
        XX_FreeSmart(p_FmPort->im.p_BdRing);
}
