#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint16_t ;
struct TYPE_12__ {scalar_t__ guestId; int /*<<< orphan*/  msgBody; int /*<<< orphan*/  msgId; int /*<<< orphan*/  base; int /*<<< orphan*/  num; } ;
typedef  TYPE_3__ t_FmPcdIpcMsg ;
struct TYPE_13__ {scalar_t__ guestId; TYPE_2__* profiles; struct TYPE_13__* p_FmPcdPlcr; scalar_t__ h_IpcSession; int /*<<< orphan*/  partPlcrProfilesBase; int /*<<< orphan*/  partNumOfPlcrProfiles; } ;
typedef  TYPE_4__ t_FmPcd ;
typedef  TYPE_3__ t_FmIpcResourceAllocParams ;
typedef  scalar_t__ t_Error ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_10__ {scalar_t__ ownerId; } ;
struct TYPE_11__ {TYPE_1__ profilesMng; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  FM_PCD_FREE_PROFILES ; 
 scalar_t__ ILLEGAL_BASE ; 
 int /*<<< orphan*/  MAJOR ; 
 scalar_t__ NCSW_MASTER_ID ; 
 int /*<<< orphan*/  NO_MSG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

void FUNC6(t_FmPcd *p_FmPcd, uint16_t base, uint16_t numOfProfiles, uint8_t guestId)
{
    int     i = 0;

    FUNC0(p_FmPcd);
    FUNC0(p_FmPcd->p_FmPcdPlcr);

    if (p_FmPcd->h_IpcSession)
    {
        t_FmIpcResourceAllocParams      ipcAllocParams;
        t_FmPcdIpcMsg                   msg;
        t_Error                         err;

        FUNC5(&msg, 0, sizeof(msg));
        FUNC5(&ipcAllocParams, 0, sizeof(t_FmIpcResourceAllocParams));
        ipcAllocParams.guestId         = p_FmPcd->guestId;
        ipcAllocParams.num             = p_FmPcd->p_FmPcdPlcr->partNumOfPlcrProfiles;
        ipcAllocParams.base            = p_FmPcd->p_FmPcdPlcr->partPlcrProfilesBase;
        msg.msgId                      = FM_PCD_FREE_PROFILES;
        FUNC4(msg.msgBody, &ipcAllocParams, sizeof(t_FmIpcResourceAllocParams));
        err = FUNC3(p_FmPcd->h_IpcSession,
                                (uint8_t*)&msg,
                                sizeof(msg.msgId) + sizeof(t_FmIpcResourceAllocParams),
                                NULL,
                                NULL,
                                NULL,
                                NULL);
        if (err != E_OK)
            FUNC2(MAJOR, err, NO_MSG);
        return;
    }
    else if (p_FmPcd->guestId != NCSW_MASTER_ID)
    {
        FUNC1(WARNING, ("FM Guest mode, without IPC - can't validate Policer-profiles range!"));
        return;
    }

    for (i=base; i<(base+numOfProfiles); i++)
    {
        if (p_FmPcd->p_FmPcdPlcr->profiles[i].profilesMng.ownerId == guestId)
           p_FmPcd->p_FmPcdPlcr->profiles[i].profilesMng.ownerId = (uint8_t)ILLEGAL_BASE;
        else
            FUNC1(WARNING, ("Request for freeing storage profile window which wasn't allocated to this partition"));
    }
}