#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_9__ {int /*<<< orphan*/  error; int /*<<< orphan*/  msgBody; int /*<<< orphan*/  msgId; } ;
typedef  TYPE_2__ t_FmIpcReply ;
struct TYPE_10__ {int val; int extra; void* boolInitialConfig; void* hardwarePortId; } ;
typedef  TYPE_3__ t_FmIpcPortRsrcParams ;
typedef  TYPE_2__ t_FmIpcMsg ;
struct TYPE_11__ {scalar_t__ guestId; TYPE_1__* p_FmStateStruct; scalar_t__ baseAddr; scalar_t__* h_IpcSessions; struct fman_bmi_regs* p_FmBmiRegs; } ;
typedef  TYPE_5__ t_Fm ;
typedef  int /*<<< orphan*/  t_Error ;
struct fman_bmi_regs {int dummy; } ;
typedef  int /*<<< orphan*/  rsrcParams ;
typedef  int /*<<< orphan*/  reply ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_8__ {int extraFifoPoolSize; int accumulatedFifoSize; int totalFifoSize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BMI_FIFO_UNITS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  E_INVALID_VALUE ; 
 int /*<<< orphan*/  E_NOT_SUPPORTED ; 
 int /*<<< orphan*/  E_OK ; 
 int FM_MAX_NUM_OF_RX_PORTS ; 
 int /*<<< orphan*/  FM_SET_SIZE_OF_FIFO ; 
 int /*<<< orphan*/  MAJOR ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  MINOR ; 
 scalar_t__ NCSW_MASTER_ID ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,void**,int,void**,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct fman_bmi_regs*,void*) ; 
 int FUNC7 (struct fman_bmi_regs*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct fman_bmi_regs*,void*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

t_Error FUNC11(t_Handle    h_Fm,
                        uint8_t     hardwarePortId,
                        uint32_t    *p_SizeOfFifo,
                        uint32_t    *p_ExtraSizeOfFifo,
                        bool        initialConfig)
{
    t_Fm                    *p_Fm = (t_Fm*)h_Fm;
    t_FmIpcPortRsrcParams   rsrcParams;
    t_Error                 err;
    struct fman_bmi_regs    *bmi_rg = p_Fm->p_FmBmiRegs;
    uint32_t                sizeOfFifo = *p_SizeOfFifo, extraSizeOfFifo = *p_ExtraSizeOfFifo;
    uint16_t                currentVal = 0, currentExtraVal = 0;

    if ((p_Fm->guestId != NCSW_MASTER_ID) &&
        !p_Fm->baseAddr &&
        p_Fm->h_IpcSessions[0])
    {
        t_FmIpcMsg          msg;
        t_FmIpcReply        reply;
        uint32_t            replyLength;

        rsrcParams.hardwarePortId = hardwarePortId;
        rsrcParams.val = sizeOfFifo;
        rsrcParams.extra = extraSizeOfFifo;
        rsrcParams.boolInitialConfig = (uint8_t)initialConfig;

        FUNC10(&msg, 0, sizeof(msg));
        FUNC10(&reply, 0, sizeof(reply));
        msg.msgId = FM_SET_SIZE_OF_FIFO;
        FUNC9(msg.msgBody, &rsrcParams, sizeof(rsrcParams));
        replyLength = sizeof(uint32_t);
        if ((err = FUNC5(p_Fm->h_IpcSessions[0],
                                     (uint8_t*)&msg,
                                     sizeof(msg.msgId) + sizeof(rsrcParams),
                                     (uint8_t*)&reply,
                                     &replyLength,
                                     NULL,
                                     NULL)) != E_OK)
            FUNC4(MINOR, err, NO_MSG);
        if (replyLength != sizeof(uint32_t))
            FUNC4(MAJOR, E_INVALID_VALUE, ("IPC reply length mismatch"));
        return (t_Error)(reply.error);
    }
    else if ((p_Fm->guestId != NCSW_MASTER_ID) &&
             p_Fm->baseAddr)
    {
        FUNC1(WARNING, ("No IPC - can't validate FM total-fifo size."));
        FUNC8(bmi_rg, hardwarePortId, sizeOfFifo, extraSizeOfFifo);
    }
    else if (p_Fm->guestId != NCSW_MASTER_ID)
        FUNC4(MAJOR, E_NOT_SUPPORTED,
                     ("running in guest-mode without neither IPC nor mapped register!"));

    if (!initialConfig)
    {
        /* !initialConfig - runtime change of existing value.
         * - read the current FIFO and extra FIFO size */
        currentExtraVal = FUNC6(bmi_rg, hardwarePortId);
        currentVal = FUNC7(bmi_rg, hardwarePortId);
    }

    if (extraSizeOfFifo > currentExtraVal)
    {
        if (extraSizeOfFifo && !p_Fm->p_FmStateStruct->extraFifoPoolSize)
            /* if this is the first time a port requires extraFifoPoolSize, the total extraFifoPoolSize
             * must be initialized to 1 buffer per port
             */
            p_Fm->p_FmStateStruct->extraFifoPoolSize = FM_MAX_NUM_OF_RX_PORTS*BMI_FIFO_UNITS;

        p_Fm->p_FmStateStruct->extraFifoPoolSize = FUNC2(p_Fm->p_FmStateStruct->extraFifoPoolSize, extraSizeOfFifo);
    }

    /* check that there are enough uncommitted fifo size */
    if ((p_Fm->p_FmStateStruct->accumulatedFifoSize - currentVal + sizeOfFifo) >
        (p_Fm->p_FmStateStruct->totalFifoSize - p_Fm->p_FmStateStruct->extraFifoPoolSize)){
        FUNC3(MAJOR, E_INVALID_VALUE,
            ("Port request fifo size + accumulated size > total FIFO size:"));
        FUNC4(MAJOR, E_INVALID_VALUE,
            ("port 0x%x requested %d bytes, extra size = %d, accumulated size = %d total size = %d",
                hardwarePortId, sizeOfFifo, p_Fm->p_FmStateStruct->extraFifoPoolSize,
                p_Fm->p_FmStateStruct->accumulatedFifoSize,
                p_Fm->p_FmStateStruct->totalFifoSize));
    }
    else
    {
        /* update accumulated */
        FUNC0(p_Fm->p_FmStateStruct->accumulatedFifoSize >= currentVal);
        p_Fm->p_FmStateStruct->accumulatedFifoSize -= currentVal;
        p_Fm->p_FmStateStruct->accumulatedFifoSize += sizeOfFifo;
        FUNC8(bmi_rg, hardwarePortId, sizeOfFifo, extraSizeOfFifo);
    }

    return E_OK;
}