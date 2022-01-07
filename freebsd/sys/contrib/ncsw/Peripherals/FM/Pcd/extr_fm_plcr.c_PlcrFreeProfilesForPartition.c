
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_12__ {scalar_t__ guestId; int msgBody; int msgId; int base; int num; } ;
typedef TYPE_3__ t_FmPcdIpcMsg ;
struct TYPE_13__ {scalar_t__ guestId; TYPE_2__* profiles; struct TYPE_13__* p_FmPcdPlcr; scalar_t__ h_IpcSession; int partPlcrProfilesBase; int partNumOfPlcrProfiles; } ;
typedef TYPE_4__ t_FmPcd ;
typedef TYPE_3__ t_FmIpcResourceAllocParams ;
typedef scalar_t__ t_Error ;
typedef int msg ;
struct TYPE_10__ {scalar_t__ ownerId; } ;
struct TYPE_11__ {TYPE_1__ profilesMng; } ;


 int ASSERT_COND (TYPE_4__*) ;
 int DBG (int ,char*) ;
 scalar_t__ E_OK ;
 int FM_PCD_FREE_PROFILES ;
 scalar_t__ ILLEGAL_BASE ;
 int MAJOR ;
 scalar_t__ NCSW_MASTER_ID ;
 int NO_MSG ;
 int REPORT_ERROR (int ,scalar_t__,int ) ;
 int WARNING ;
 scalar_t__ XX_IpcSendMessage (scalar_t__,scalar_t__*,int,int *,int *,int *,int *) ;
 int memcpy (int ,TYPE_3__*,int) ;
 int memset (TYPE_3__*,int ,int) ;

void PlcrFreeProfilesForPartition(t_FmPcd *p_FmPcd, uint16_t base, uint16_t numOfProfiles, uint8_t guestId)
{
    int i = 0;

    ASSERT_COND(p_FmPcd);
    ASSERT_COND(p_FmPcd->p_FmPcdPlcr);

    if (p_FmPcd->h_IpcSession)
    {
        t_FmIpcResourceAllocParams ipcAllocParams;
        t_FmPcdIpcMsg msg;
        t_Error err;

        memset(&msg, 0, sizeof(msg));
        memset(&ipcAllocParams, 0, sizeof(t_FmIpcResourceAllocParams));
        ipcAllocParams.guestId = p_FmPcd->guestId;
        ipcAllocParams.num = p_FmPcd->p_FmPcdPlcr->partNumOfPlcrProfiles;
        ipcAllocParams.base = p_FmPcd->p_FmPcdPlcr->partPlcrProfilesBase;
        msg.msgId = FM_PCD_FREE_PROFILES;
        memcpy(msg.msgBody, &ipcAllocParams, sizeof(t_FmIpcResourceAllocParams));
        err = XX_IpcSendMessage(p_FmPcd->h_IpcSession,
                                (uint8_t*)&msg,
                                sizeof(msg.msgId) + sizeof(t_FmIpcResourceAllocParams),
                                ((void*)0),
                                ((void*)0),
                                ((void*)0),
                                ((void*)0));
        if (err != E_OK)
            REPORT_ERROR(MAJOR, err, NO_MSG);
        return;
    }
    else if (p_FmPcd->guestId != NCSW_MASTER_ID)
    {
        DBG(WARNING, ("FM Guest mode, without IPC - can't validate Policer-profiles range!"));
        return;
    }

    for (i=base; i<(base+numOfProfiles); i++)
    {
        if (p_FmPcd->p_FmPcdPlcr->profiles[i].profilesMng.ownerId == guestId)
           p_FmPcd->p_FmPcdPlcr->profiles[i].profilesMng.ownerId = (uint8_t)ILLEGAL_BASE;
        else
            DBG(WARNING, ("Request for freeing storage profile window which wasn't allocated to this partition"));
    }
}
