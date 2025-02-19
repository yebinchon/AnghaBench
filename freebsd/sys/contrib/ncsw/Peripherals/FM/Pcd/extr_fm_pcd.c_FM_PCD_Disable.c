
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_8__ {scalar_t__ error; int msgId; } ;
typedef TYPE_1__ t_FmPcdIpcReply ;
typedef TYPE_1__ t_FmPcdIpcMsg ;
struct TYPE_9__ {scalar_t__ guestId; scalar_t__ numOfEnabledGuestPartitionsPcds; void* enabled; scalar_t__ p_FmPcdPrs; scalar_t__ p_FmPcdPlcr; scalar_t__ p_FmPcdKg; scalar_t__ h_IpcSession; } ;
typedef TYPE_3__ t_FmPcd ;
typedef scalar_t__ t_Error ;
typedef int reply ;
typedef int msg ;


 int E_INVALID_HANDLE ;
 scalar_t__ E_INVALID_STATE ;
 scalar_t__ E_INVALID_VALUE ;
 scalar_t__ E_NOT_SUPPORTED ;
 scalar_t__ E_OK ;
 void* FALSE ;
 int FM_PCD_GUEST_DISABLE ;
 int KgDisable (TYPE_3__*) ;
 int MAJOR ;
 int MINOR ;
 scalar_t__ NCSW_MASTER_ID ;
 char* NO_MSG ;
 int PlcrDisable (TYPE_3__*) ;
 int PrsDisable (TYPE_3__*) ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int SANITY_CHECK_RETURN_ERROR (scalar_t__,int ) ;
 scalar_t__ XX_IpcSendMessage (scalar_t__,int *,int,int *,int*,int *,int *) ;
 int memset (TYPE_1__*,int ,int) ;

t_Error FM_PCD_Disable(t_Handle h_FmPcd)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;
    t_Error err = E_OK;

    SANITY_CHECK_RETURN_ERROR(h_FmPcd, E_INVALID_HANDLE);

    if (!p_FmPcd->enabled)
        return E_OK;

    if ((p_FmPcd->guestId != NCSW_MASTER_ID) &&
        p_FmPcd->h_IpcSession)
    {
        t_FmPcdIpcMsg msg;
        t_FmPcdIpcReply reply;
        uint32_t replyLength;

        memset(&reply, 0, sizeof(reply));
        memset(&msg, 0, sizeof(msg));
        msg.msgId = FM_PCD_GUEST_DISABLE;
        replyLength = sizeof(uint32_t);
        if ((err = XX_IpcSendMessage(p_FmPcd->h_IpcSession,
                                     (uint8_t*)&msg,
                                     sizeof(msg.msgId),
                                     (uint8_t*)&reply,
                                     &replyLength,
                                     ((void*)0),
                                     ((void*)0))) != E_OK)
            RETURN_ERROR(MAJOR, err, NO_MSG);
        if (replyLength != sizeof(uint32_t))
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("IPC reply length mismatch"));
        if (reply.error == E_OK)
            p_FmPcd->enabled = FALSE;

        return (t_Error)(reply.error);
    }
    else if (p_FmPcd->guestId != NCSW_MASTER_ID)
        RETURN_ERROR(MINOR, E_NOT_SUPPORTED,
                     ("running in guest-mode without IPC!"));

    if (p_FmPcd->numOfEnabledGuestPartitionsPcds != 0)
        RETURN_ERROR(MAJOR, E_INVALID_STATE,
                     ("Trying to disable a master partition PCD while"
                      "guest partitions are still enabled!"));

    if (p_FmPcd->p_FmPcdKg)
         KgDisable(p_FmPcd);

    if (p_FmPcd->p_FmPcdPlcr)
        PlcrDisable(p_FmPcd);

    if (p_FmPcd->p_FmPcdPrs)
        PrsDisable(p_FmPcd);

    p_FmPcd->enabled = FALSE;

    return E_OK;
}
