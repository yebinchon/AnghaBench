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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_9__ {int /*<<< orphan*/  error; int /*<<< orphan*/  msgBody; int /*<<< orphan*/  msgId; } ;
typedef  TYPE_2__ t_FmIpcReply ;
struct TYPE_10__ {scalar_t__ boolInitialConfig; scalar_t__ extra; scalar_t__ val; scalar_t__ hardwarePortId; } ;
typedef  TYPE_3__ t_FmIpcPortRsrcParams ;
typedef  TYPE_2__ t_FmIpcMsg ;
struct TYPE_11__ {scalar_t__ guestId; TYPE_1__* p_FmStateStruct; scalar_t__ baseAddr; scalar_t__* h_IpcSessions; struct fman_bmi_regs* p_FmBmiRegs; } ;
typedef  TYPE_5__ t_Fm ;
typedef  int /*<<< orphan*/  t_Error ;
struct fman_bmi_regs {int dummy; } ;
typedef  int /*<<< orphan*/  rsrcParams ;
typedef  int /*<<< orphan*/  reply ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_8__ {scalar_t__ extraTasksPoolSize; scalar_t__ accumulatedNumOfTasks; scalar_t__ totalNumOfTasks; int /*<<< orphan*/  fmId; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  E_INVALID_VALUE ; 
 int /*<<< orphan*/  E_NOT_AVAILABLE ; 
 int /*<<< orphan*/  E_NOT_SUPPORTED ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FM_SET_NUM_OF_TASKS ; 
 int FUNC2 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  MAJOR ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  MINOR ; 
 scalar_t__ NCSW_MASTER_ID ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__*,int,scalar_t__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct fman_bmi_regs*,scalar_t__) ; 
 scalar_t__ FUNC7 (struct fman_bmi_regs*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct fman_bmi_regs*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

t_Error FUNC11(t_Handle    h_Fm,
                        uint8_t     hardwarePortId,
                        uint8_t     *p_NumOfTasks,
                        uint8_t     *p_NumOfExtraTasks,
                        bool        initialConfig)
{
    t_Fm                    *p_Fm = (t_Fm *)h_Fm;
    t_Error                 err;
    struct fman_bmi_regs    *bmi_rg = p_Fm->p_FmBmiRegs;
    uint8_t                 currentVal = 0, currentExtraVal = 0, numOfTasks = *p_NumOfTasks, numOfExtraTasks = *p_NumOfExtraTasks;

    FUNC0(FUNC2(1, hardwarePortId, 63));

    if ((p_Fm->guestId != NCSW_MASTER_ID) &&
        !p_Fm->baseAddr &&
        p_Fm->h_IpcSessions[0])
    {
        t_FmIpcPortRsrcParams   rsrcParams;
        t_FmIpcMsg              msg;
        t_FmIpcReply            reply;
        uint32_t                replyLength;

        rsrcParams.hardwarePortId = hardwarePortId;
        rsrcParams.val = numOfTasks;
        rsrcParams.extra = numOfExtraTasks;
        rsrcParams.boolInitialConfig = (uint8_t)initialConfig;

        FUNC10(&msg, 0, sizeof(msg));
        FUNC10(&reply, 0, sizeof(reply));
        msg.msgId = FM_SET_NUM_OF_TASKS;
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
        FUNC1(WARNING, ("No IPC - can't validate FM total-num-of-tasks."));
        FUNC8(bmi_rg, hardwarePortId, numOfTasks, numOfExtraTasks);
    }
    else if (p_Fm->guestId != NCSW_MASTER_ID)
        FUNC4(MAJOR, E_NOT_SUPPORTED,
                     ("running in guest-mode without neither IPC nor mapped register!"));

    if (!initialConfig)
    {
        /* !initialConfig - runtime change of existing value.
         * - read the current number of tasks */
        currentVal = FUNC7(bmi_rg, hardwarePortId);
        currentExtraVal = FUNC6(bmi_rg, hardwarePortId);
    }

    if (numOfExtraTasks > currentExtraVal)
         p_Fm->p_FmStateStruct->extraTasksPoolSize =
             (uint8_t)FUNC3(p_Fm->p_FmStateStruct->extraTasksPoolSize, numOfExtraTasks);

    /* check that there are enough uncommitted tasks */
    if ((p_Fm->p_FmStateStruct->accumulatedNumOfTasks - currentVal + numOfTasks) >
       (p_Fm->p_FmStateStruct->totalNumOfTasks - p_Fm->p_FmStateStruct->extraTasksPoolSize))
        FUNC4(MAJOR, E_NOT_AVAILABLE,
                     ("Requested numOfTasks and extra tasks pool for fm%d exceed total numOfTasks.",
                      p_Fm->p_FmStateStruct->fmId));
    else
    {
        FUNC0(p_Fm->p_FmStateStruct->accumulatedNumOfTasks >= currentVal);
        /* update accumulated */
        p_Fm->p_FmStateStruct->accumulatedNumOfTasks -= currentVal;
        p_Fm->p_FmStateStruct->accumulatedNumOfTasks += numOfTasks;
        FUNC8(bmi_rg, hardwarePortId, numOfTasks, numOfExtraTasks);
    }

    return E_OK;
}