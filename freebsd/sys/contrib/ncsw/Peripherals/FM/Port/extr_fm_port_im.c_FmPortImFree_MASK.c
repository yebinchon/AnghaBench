#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_12__ {int /*<<< orphan*/  h_BufferPool; int /*<<< orphan*/  (* f_PutBuf ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  f_VirtToPhys; int /*<<< orphan*/  f_PhysToVirt; } ;
struct TYPE_13__ {size_t currBdId; scalar_t__ p_BdRing; int /*<<< orphan*/ * p_BdShadow; TYPE_4__* p_FmPortImPram; int /*<<< orphan*/  h_FmMuram; TYPE_2__ rxPool; } ;
struct TYPE_11__ {int /*<<< orphan*/  gen; } ;
struct TYPE_14__ {scalar_t__ portType; TYPE_3__ im; int /*<<< orphan*/  fmanCtrlEventId; int /*<<< orphan*/  h_Fm; TYPE_1__ rxQd; scalar_t__ exceptions; int /*<<< orphan*/  polling; } ;
typedef  TYPE_4__ t_FmPort ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int BD_R_E ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC11 (TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ e_FM_PORT_TYPE_RX ; 
 scalar_t__ e_FM_PORT_TYPE_RX_10G ; 
 int /*<<< orphan*/  e_TX_CONF_TYPE_FLUSH ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC17(t_FmPort *p_FmPort)
{
    uint32_t    bdStatus;
    uint8_t     *p_CurData;

    FUNC0(p_FmPort);
    FUNC0(p_FmPort->im.p_FmPortImPram);

    if ((p_FmPort->portType == e_FM_PORT_TYPE_RX) ||
        (p_FmPort->portType == e_FM_PORT_TYPE_RX_10G))
    {
        if (!p_FmPort->polling || p_FmPort->exceptions)
        {
            /* Deallocate and unregister interrupts */
            FUNC9(p_FmPort->h_Fm, p_FmPort->fmanCtrlEventId, 0);

            FUNC7(p_FmPort->h_Fm, p_FmPort->fmanCtrlEventId);

            FUNC13(p_FmPort->im.p_FmPortImPram->rxQd.gen, 0);

            FUNC10(p_FmPort->h_Fm, p_FmPort->fmanCtrlEventId);
        }
        /* Try first clean what has received */
        FUNC8(p_FmPort);

        /* Now, get rid of the the empty buffer! */
        bdStatus = FUNC2(FUNC1(p_FmPort->im.currBdId));

        while (bdStatus & BD_R_E) /* while there is data in the Rx BD */
        {
            p_CurData = FUNC4(p_FmPort->im.rxPool.f_PhysToVirt, FUNC1(p_FmPort->im.currBdId));

            FUNC5(p_FmPort->im.rxPool.f_VirtToPhys, FUNC1(p_FmPort->im.currBdId), NULL);
            FUNC3(FUNC1(p_FmPort->im.currBdId), 0);

            p_FmPort->im.rxPool.f_PutBuf(p_FmPort->im.rxPool.h_BufferPool,
                                         p_CurData,
                                         p_FmPort->im.p_BdShadow[p_FmPort->im.currBdId]);

            p_FmPort->im.currBdId = FUNC11(p_FmPort, p_FmPort->im.currBdId);
            bdStatus = FUNC2(FUNC1(p_FmPort->im.currBdId));
        }
    }
    else
        FUNC12(p_FmPort, e_TX_CONF_TYPE_FLUSH);

    FUNC6(p_FmPort->im.h_FmMuram, p_FmPort->im.p_FmPortImPram);

    if (p_FmPort->im.p_BdShadow)
        FUNC14(p_FmPort->im.p_BdShadow);

    if (p_FmPort->im.p_BdRing)
        FUNC15(p_FmPort->im.p_BdRing);
}