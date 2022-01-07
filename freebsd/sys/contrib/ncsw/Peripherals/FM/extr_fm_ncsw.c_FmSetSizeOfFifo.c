
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_9__ {int error; int msgBody; int msgId; } ;
typedef TYPE_2__ t_FmIpcReply ;
struct TYPE_10__ {int val; int extra; void* boolInitialConfig; void* hardwarePortId; } ;
typedef TYPE_3__ t_FmIpcPortRsrcParams ;
typedef TYPE_2__ t_FmIpcMsg ;
struct TYPE_11__ {scalar_t__ guestId; TYPE_1__* p_FmStateStruct; scalar_t__ baseAddr; scalar_t__* h_IpcSessions; struct fman_bmi_regs* p_FmBmiRegs; } ;
typedef TYPE_5__ t_Fm ;
typedef int t_Error ;
struct fman_bmi_regs {int dummy; } ;
typedef int rsrcParams ;
typedef int reply ;
typedef int msg ;
struct TYPE_8__ {int extraFifoPoolSize; int accumulatedFifoSize; int totalFifoSize; } ;


 int ASSERT_COND (int) ;
 int BMI_FIFO_UNITS ;
 int DBG (int ,char*) ;
 int E_INVALID_VALUE ;
 int E_NOT_SUPPORTED ;
 int E_OK ;
 int FM_MAX_NUM_OF_RX_PORTS ;
 int FM_SET_SIZE_OF_FIFO ;
 int MAJOR ;
 int MAX (int,int) ;
 int MINOR ;
 scalar_t__ NCSW_MASTER_ID ;
 char* NO_MSG ;
 int REPORT_ERROR (int ,int ,char*) ;
 int RETURN_ERROR (int ,int ,char*) ;
 int WARNING ;
 int XX_IpcSendMessage (scalar_t__,void**,int,void**,int*,int *,int *) ;
 int fman_get_size_of_extra_fifo (struct fman_bmi_regs*,void*) ;
 int fman_get_size_of_fifo (struct fman_bmi_regs*,void*) ;
 int fman_set_size_of_fifo (struct fman_bmi_regs*,void*,int,int) ;
 int memcpy (int ,TYPE_3__*,int) ;
 int memset (TYPE_2__*,int ,int) ;

t_Error FmSetSizeOfFifo(t_Handle h_Fm,
                        uint8_t hardwarePortId,
                        uint32_t *p_SizeOfFifo,
                        uint32_t *p_ExtraSizeOfFifo,
                        bool initialConfig)
{
    t_Fm *p_Fm = (t_Fm*)h_Fm;
    t_FmIpcPortRsrcParams rsrcParams;
    t_Error err;
    struct fman_bmi_regs *bmi_rg = p_Fm->p_FmBmiRegs;
    uint32_t sizeOfFifo = *p_SizeOfFifo, extraSizeOfFifo = *p_ExtraSizeOfFifo;
    uint16_t currentVal = 0, currentExtraVal = 0;

    if ((p_Fm->guestId != NCSW_MASTER_ID) &&
        !p_Fm->baseAddr &&
        p_Fm->h_IpcSessions[0])
    {
        t_FmIpcMsg msg;
        t_FmIpcReply reply;
        uint32_t replyLength;

        rsrcParams.hardwarePortId = hardwarePortId;
        rsrcParams.val = sizeOfFifo;
        rsrcParams.extra = extraSizeOfFifo;
        rsrcParams.boolInitialConfig = (uint8_t)initialConfig;

        memset(&msg, 0, sizeof(msg));
        memset(&reply, 0, sizeof(reply));
        msg.msgId = FM_SET_SIZE_OF_FIFO;
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
        DBG(WARNING, ("No IPC - can't validate FM total-fifo size."));
        fman_set_size_of_fifo(bmi_rg, hardwarePortId, sizeOfFifo, extraSizeOfFifo);
    }
    else if (p_Fm->guestId != NCSW_MASTER_ID)
        RETURN_ERROR(MAJOR, E_NOT_SUPPORTED,
                     ("running in guest-mode without neither IPC nor mapped register!"));

    if (!initialConfig)
    {


        currentExtraVal = fman_get_size_of_extra_fifo(bmi_rg, hardwarePortId);
        currentVal = fman_get_size_of_fifo(bmi_rg, hardwarePortId);
    }

    if (extraSizeOfFifo > currentExtraVal)
    {
        if (extraSizeOfFifo && !p_Fm->p_FmStateStruct->extraFifoPoolSize)



            p_Fm->p_FmStateStruct->extraFifoPoolSize = FM_MAX_NUM_OF_RX_PORTS*BMI_FIFO_UNITS;

        p_Fm->p_FmStateStruct->extraFifoPoolSize = MAX(p_Fm->p_FmStateStruct->extraFifoPoolSize, extraSizeOfFifo);
    }


    if ((p_Fm->p_FmStateStruct->accumulatedFifoSize - currentVal + sizeOfFifo) >
        (p_Fm->p_FmStateStruct->totalFifoSize - p_Fm->p_FmStateStruct->extraFifoPoolSize)){
        REPORT_ERROR(MAJOR, E_INVALID_VALUE,
            ("Port request fifo size + accumulated size > total FIFO size:"));
        RETURN_ERROR(MAJOR, E_INVALID_VALUE,
            ("port 0x%x requested %d bytes, extra size = %d, accumulated size = %d total size = %d",
                hardwarePortId, sizeOfFifo, p_Fm->p_FmStateStruct->extraFifoPoolSize,
                p_Fm->p_FmStateStruct->accumulatedFifoSize,
                p_Fm->p_FmStateStruct->totalFifoSize));
    }
    else
    {

        ASSERT_COND(p_Fm->p_FmStateStruct->accumulatedFifoSize >= currentVal);
        p_Fm->p_FmStateStruct->accumulatedFifoSize -= currentVal;
        p_Fm->p_FmStateStruct->accumulatedFifoSize += sizeOfFifo;
        fman_set_size_of_fifo(bmi_rg, hardwarePortId, sizeOfFifo, extraSizeOfFifo);
    }

    return E_OK;
}
