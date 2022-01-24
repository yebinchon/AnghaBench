#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  t_Handle ;
struct TYPE_11__ {int /*<<< orphan*/  h_BufferPool; scalar_t__ (* f_PutBuf ) (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  f_VirtToPhys; int /*<<< orphan*/  f_PhysToVirt; scalar_t__* (* f_GetBuf ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_12__ {size_t currBdId; size_t firstBdOfFrameId; int rxFrameAccumLength; scalar_t__ (* f_RxStore ) (int /*<<< orphan*/ ,scalar_t__*,scalar_t__,scalar_t__,scalar_t__ volatile,int /*<<< orphan*/ ) ;TYPE_3__ rxPool; TYPE_2__* p_FmPortImPram; int /*<<< orphan*/ * p_BdShadow; } ;
struct TYPE_13__ {void* lock; TYPE_4__ im; int /*<<< orphan*/  h_App; int /*<<< orphan*/  h_Spinlock; } ;
typedef  TYPE_5__ t_FmPort ;
typedef  int /*<<< orphan*/  t_Error ;
struct TYPE_9__ {int /*<<< orphan*/  offsetOut; } ;
struct TYPE_10__ {TYPE_1__ rxQd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int BD_L ; 
 int BD_LENGTH_MASK ; 
 int BD_RX_ERRORS ; 
 int BD_R_E ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_NOT_AVAILABLE ; 
 int /*<<< orphan*/  E_OK ; 
 void* FALSE ; 
 scalar_t__ volatile FIRST_BUF ; 
 size_t FUNC6 (TYPE_5__*,size_t) ; 
 size_t IM_ILEGAL_BD_ID ; 
 scalar_t__ volatile LAST_BUF ; 
 int /*<<< orphan*/  MAJOR ; 
 scalar_t__ volatile MIDDLE_BUF ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ volatile SINGLE_BUF ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ e_RX_STORE_RESPONSE_PAUSE ; 
 scalar_t__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__,scalar_t__,scalar_t__ volatile,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 

t_Error FUNC14(t_FmPort *p_FmPort)
{
    t_Handle                h_CurrUserPriv, h_NewUserPriv;
    uint32_t                bdStatus;
    volatile uint8_t        buffPos;
    uint16_t                length;
    uint16_t                errors;
    uint8_t                 *p_CurData, *p_Data;
    uint32_t                flags;

    FUNC0(p_FmPort);

    flags = FUNC9(p_FmPort->h_Spinlock);
    if (p_FmPort->lock)
    {
        FUNC10(p_FmPort->h_Spinlock, flags);
        return E_OK;
    }
    p_FmPort->lock = TRUE;
    FUNC10(p_FmPort->h_Spinlock, flags);

    bdStatus = FUNC2(FUNC1(p_FmPort->im.currBdId));

    while (!(bdStatus & BD_R_E)) /* while there is data in the Rx BD */
    {
        if ((p_Data = p_FmPort->im.rxPool.f_GetBuf(p_FmPort->im.rxPool.h_BufferPool, &h_NewUserPriv)) == NULL)
        {
            p_FmPort->lock = FALSE;
            FUNC7(MAJOR, E_NOT_AVAILABLE, ("Data buffer"));
        }

        if (p_FmPort->im.firstBdOfFrameId == IM_ILEGAL_BD_ID)
            p_FmPort->im.firstBdOfFrameId = p_FmPort->im.currBdId;

        p_CurData = FUNC4(p_FmPort->im.rxPool.f_PhysToVirt, FUNC1(p_FmPort->im.currBdId));
        h_CurrUserPriv = p_FmPort->im.p_BdShadow[p_FmPort->im.currBdId];
        length = (uint16_t)((bdStatus & BD_L) ?
                            ((bdStatus & BD_LENGTH_MASK) - p_FmPort->im.rxFrameAccumLength):
                            (bdStatus & BD_LENGTH_MASK));
        p_FmPort->im.rxFrameAccumLength += length;

        /* determine whether buffer is first, last, first and last (single  */
        /* buffer frame) or middle (not first and not last)                 */
        buffPos = (uint8_t)((p_FmPort->im.currBdId == p_FmPort->im.firstBdOfFrameId) ?
                            ((bdStatus & BD_L) ? SINGLE_BUF : FIRST_BUF) :
                            ((bdStatus & BD_L) ? LAST_BUF : MIDDLE_BUF));

        if (bdStatus & BD_L)
        {
            p_FmPort->im.rxFrameAccumLength = 0;
            p_FmPort->im.firstBdOfFrameId = IM_ILEGAL_BD_ID;
        }

        FUNC5(p_FmPort->im.rxPool.f_VirtToPhys, FUNC1(p_FmPort->im.currBdId), p_Data);

        FUNC3(FUNC1(p_FmPort->im.currBdId), BD_R_E);

        errors = (uint16_t)((bdStatus & BD_RX_ERRORS) >> 16);
        p_FmPort->im.p_BdShadow[p_FmPort->im.currBdId] = h_NewUserPriv;

        p_FmPort->im.currBdId = FUNC6(p_FmPort, p_FmPort->im.currBdId);
        FUNC8(p_FmPort->im.p_FmPortImPram->rxQd.offsetOut, (uint16_t)(p_FmPort->im.currBdId<<4));
        /* Pass the buffer if one of the conditions is true:
        - There are no errors
        - This is a part of a larger frame ( the application has already received some buffers ) */
        if ((buffPos != SINGLE_BUF) || !errors)
        {
            if (p_FmPort->im.f_RxStore(p_FmPort->h_App,
                                       p_CurData,
                                       length,
                                       errors,
                                       buffPos,
                                       h_CurrUserPriv) == e_RX_STORE_RESPONSE_PAUSE)
                break;
        }
        else if (p_FmPort->im.rxPool.f_PutBuf(p_FmPort->im.rxPool.h_BufferPool,
                                              p_CurData,
                                              h_CurrUserPriv))
        {
            p_FmPort->lock = FALSE;
            FUNC7(MAJOR, E_INVALID_STATE, ("Failed freeing data buffer"));
        }

        bdStatus = FUNC2(FUNC1(p_FmPort->im.currBdId));
    }
    p_FmPort->lock = FALSE;
    return E_OK;
}