
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_9__ {int error; int msgBody; int msgId; } ;
typedef TYPE_2__ t_FmIpcReply ;
struct TYPE_10__ {scalar_t__ boolInitialConfig; scalar_t__ extra; scalar_t__ val; scalar_t__ hardwarePortId; } ;
typedef TYPE_3__ t_FmIpcPortRsrcParams ;
typedef TYPE_2__ t_FmIpcMsg ;
struct TYPE_11__ {scalar_t__ guestId; TYPE_1__* p_FmStateStruct; scalar_t__ baseAddr; scalar_t__* h_IpcSessions; struct fman_bmi_regs* p_FmBmiRegs; } ;
typedef TYPE_5__ t_Fm ;
typedef int t_Error ;
struct fman_bmi_regs {int dummy; } ;
typedef int rsrcParams ;
typedef int reply ;
typedef int msg ;
struct TYPE_8__ {scalar_t__ extraTasksPoolSize; scalar_t__ accumulatedNumOfTasks; scalar_t__ totalNumOfTasks; int fmId; } ;


 int ASSERT_COND (int) ;
 int DBG (int ,char*) ;
 int E_INVALID_VALUE ;
 int E_NOT_AVAILABLE ;
 int E_NOT_SUPPORTED ;
 int E_OK ;
 int FM_SET_NUM_OF_TASKS ;
 int IN_RANGE (int,scalar_t__,int) ;
 int MAJOR ;
 scalar_t__ MAX (scalar_t__,scalar_t__) ;
 int MINOR ;
 scalar_t__ NCSW_MASTER_ID ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,int ,char*) ;
 int WARNING ;
 int XX_IpcSendMessage (scalar_t__,scalar_t__*,int,scalar_t__*,int*,int *,int *) ;
 scalar_t__ fman_get_num_extra_tasks (struct fman_bmi_regs*,scalar_t__) ;
 scalar_t__ fman_get_num_of_tasks (struct fman_bmi_regs*,scalar_t__) ;
 int fman_set_num_of_tasks (struct fman_bmi_regs*,scalar_t__,scalar_t__,scalar_t__) ;
 int memcpy (int ,TYPE_3__*,int) ;
 int memset (TYPE_2__*,int ,int) ;

t_Error FmSetNumOfTasks(t_Handle h_Fm,
                        uint8_t hardwarePortId,
                        uint8_t *p_NumOfTasks,
                        uint8_t *p_NumOfExtraTasks,
                        bool initialConfig)
{
    t_Fm *p_Fm = (t_Fm *)h_Fm;
    t_Error err;
    struct fman_bmi_regs *bmi_rg = p_Fm->p_FmBmiRegs;
    uint8_t currentVal = 0, currentExtraVal = 0, numOfTasks = *p_NumOfTasks, numOfExtraTasks = *p_NumOfExtraTasks;

    ASSERT_COND(IN_RANGE(1, hardwarePortId, 63));

    if ((p_Fm->guestId != NCSW_MASTER_ID) &&
        !p_Fm->baseAddr &&
        p_Fm->h_IpcSessions[0])
    {
        t_FmIpcPortRsrcParams rsrcParams;
        t_FmIpcMsg msg;
        t_FmIpcReply reply;
        uint32_t replyLength;

        rsrcParams.hardwarePortId = hardwarePortId;
        rsrcParams.val = numOfTasks;
        rsrcParams.extra = numOfExtraTasks;
        rsrcParams.boolInitialConfig = (uint8_t)initialConfig;

        memset(&msg, 0, sizeof(msg));
        memset(&reply, 0, sizeof(reply));
        msg.msgId = FM_SET_NUM_OF_TASKS;
        memcpy(msg.msgBody, &rsrcParams, sizeof(rsrcParams));
        replyLength = sizeof(uint32_t);
        if ((err = XX_IpcSendMessage(p_Fm->h_IpcSessions[0],
                                     (uint8_t*)&msg,
                                     sizeof(msg.msgId) + sizeof(rsrcParams),
                                     (uint8_t*)&reply,
                                     &replyLength,
                                     ((void*)0),
                                     ((void*)0))) != E_OK)
            RETURN_ERROR(MINOR, err, NO_MSG);
        if (replyLength != sizeof(uint32_t))
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("IPC reply length mismatch"));
        return (t_Error)(reply.error);
    }
    else if ((p_Fm->guestId != NCSW_MASTER_ID) &&
             p_Fm->baseAddr)
    {
        DBG(WARNING, ("No IPC - can't validate FM total-num-of-tasks."));
        fman_set_num_of_tasks(bmi_rg, hardwarePortId, numOfTasks, numOfExtraTasks);
    }
    else if (p_Fm->guestId != NCSW_MASTER_ID)
        RETURN_ERROR(MAJOR, E_NOT_SUPPORTED,
                     ("running in guest-mode without neither IPC nor mapped register!"));

    if (!initialConfig)
    {


        currentVal = fman_get_num_of_tasks(bmi_rg, hardwarePortId);
        currentExtraVal = fman_get_num_extra_tasks(bmi_rg, hardwarePortId);
    }

    if (numOfExtraTasks > currentExtraVal)
         p_Fm->p_FmStateStruct->extraTasksPoolSize =
             (uint8_t)MAX(p_Fm->p_FmStateStruct->extraTasksPoolSize, numOfExtraTasks);


    if ((p_Fm->p_FmStateStruct->accumulatedNumOfTasks - currentVal + numOfTasks) >
       (p_Fm->p_FmStateStruct->totalNumOfTasks - p_Fm->p_FmStateStruct->extraTasksPoolSize))
        RETURN_ERROR(MAJOR, E_NOT_AVAILABLE,
                     ("Requested numOfTasks and extra tasks pool for fm%d exceed total numOfTasks.",
                      p_Fm->p_FmStateStruct->fmId));
    else
    {
        ASSERT_COND(p_Fm->p_FmStateStruct->accumulatedNumOfTasks >= currentVal);

        p_Fm->p_FmStateStruct->accumulatedNumOfTasks -= currentVal;
        p_Fm->p_FmStateStruct->accumulatedNumOfTasks += numOfTasks;
        fman_set_num_of_tasks(bmi_rg, hardwarePortId, numOfTasks, numOfExtraTasks);
    }

    return E_OK;
}
