
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_9__ {int error; int * msgBody; int msgId; } ;
typedef TYPE_3__ t_FmIpcReply ;
typedef TYPE_3__ t_FmIpcMsg ;
struct TYPE_10__ {scalar_t__ guestId; TYPE_2__* p_FmStateStruct; int baseAddr; scalar_t__* h_IpcSessions; struct fman_fpm_regs* p_FmFpmRegs; } ;
typedef TYPE_5__ t_Fm ;
typedef scalar_t__ t_Error ;
struct fman_fpm_regs {int dummy; } ;
typedef int reply ;
typedef int msg ;
typedef int hardwarePortId ;
struct TYPE_7__ {int majorRev; } ;
struct TYPE_8__ {TYPE_1__ revInfo; } ;


 scalar_t__ E_INVALID_STATE ;
 scalar_t__ E_INVALID_VALUE ;
 scalar_t__ E_NOT_AVAILABLE ;
 scalar_t__ E_NOT_SUPPORTED ;
 scalar_t__ E_OK ;
 int FM_RESUME_STALLED_PORT ;
 scalar_t__ FmIsPortStalled (scalar_t__,int ,int*) ;
 int MAJOR ;
 int MINOR ;
 scalar_t__ NCSW_MASTER_ID ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 scalar_t__ XX_IpcSendMessage (scalar_t__,int *,int,int *,int*,int *,int *) ;
 int fman_resume_stalled_port (struct fman_fpm_regs*,int ) ;
 int memset (TYPE_3__*,int ,int) ;

t_Error FmResumeStalledPort(t_Handle h_Fm, uint8_t hardwarePortId)
{
    t_Fm *p_Fm = (t_Fm*)h_Fm;
    t_Error err;
    bool isStalled;
    struct fman_fpm_regs *fpm_rg = p_Fm->p_FmFpmRegs;

    if ((p_Fm->guestId != NCSW_MASTER_ID) &&
        !p_Fm->baseAddr &&
        p_Fm->h_IpcSessions[0])
    {
        t_FmIpcMsg msg;
        t_FmIpcReply reply;
        uint32_t replyLength;

        memset(&msg, 0, sizeof(msg));
        memset(&reply, 0, sizeof(reply));
        msg.msgId = FM_RESUME_STALLED_PORT;
        msg.msgBody[0] = hardwarePortId;
        replyLength = sizeof(uint32_t);
        err = XX_IpcSendMessage(p_Fm->h_IpcSessions[0],
                                (uint8_t*)&msg,
                                sizeof(msg.msgId) + sizeof(hardwarePortId),
                                (uint8_t*)&reply,
                                &replyLength,
                                ((void*)0),
                                ((void*)0));
        if (err != E_OK)
            RETURN_ERROR(MINOR, err, NO_MSG);
        if (replyLength != sizeof(uint32_t))
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("IPC reply length mismatch"));
        return (t_Error)(reply.error);
    }
    else if (!p_Fm->baseAddr)
        RETURN_ERROR(MINOR, E_NOT_SUPPORTED,
                     ("Either IPC or 'baseAddress' is required!"));

    if (p_Fm->p_FmStateStruct->revInfo.majorRev >= 6)
        RETURN_ERROR(MINOR, E_NOT_AVAILABLE, ("Not available for this FM revision!"));


    err = FmIsPortStalled(h_Fm, hardwarePortId, &isStalled);
    if (err)
        RETURN_ERROR(MAJOR, E_INVALID_STATE, ("Can't get port status"));
    if (!isStalled)
        return E_OK;

    fman_resume_stalled_port(fpm_rg, hardwarePortId);

    return E_OK;
}
