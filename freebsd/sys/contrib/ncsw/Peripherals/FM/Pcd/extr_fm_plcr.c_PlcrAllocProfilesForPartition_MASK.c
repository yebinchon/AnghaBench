#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_13__ {scalar_t__ guestId; scalar_t__ base; scalar_t__* msgBody; struct TYPE_13__* replyBody; int /*<<< orphan*/  msgId; int /*<<< orphan*/  num; } ;
typedef  TYPE_3__ t_FmPcdIpcReply ;
typedef  TYPE_3__ t_FmPcdIpcMsg ;
struct TYPE_14__ {scalar_t__ guestId; scalar_t__ partPlcrProfilesBase; int /*<<< orphan*/  h_Spinlock; TYPE_2__* profiles; struct TYPE_14__* p_FmPcdPlcr; scalar_t__ h_IpcSession; int /*<<< orphan*/  partNumOfPlcrProfiles; } ;
typedef  TYPE_5__ t_FmPcd ;
typedef  TYPE_3__ t_FmIpcResourceAllocParams ;
typedef  scalar_t__ t_Error ;
typedef  int /*<<< orphan*/  reply ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_11__ {scalar_t__ ownerId; } ;
struct TYPE_12__ {TYPE_1__ profilesMng; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  FM_PCD_ALLOC_PROFILES ; 
 scalar_t__ FM_PCD_PLCR_NUM_ENTRIES ; 
 scalar_t__ ILLEGAL_BASE ; 
 int /*<<< orphan*/  MAJOR ; 
 scalar_t__ NCSW_MASTER_ID ; 
 int /*<<< orphan*/  NO_MSG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__*,int,scalar_t__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

uint16_t FUNC8(t_FmPcd *p_FmPcd, uint16_t base, uint16_t numOfProfiles, uint8_t guestId)
{
    uint32_t    intFlags;
    uint16_t    profilesFound = 0;
    int         i = 0;

    FUNC0(p_FmPcd);
    FUNC0(p_FmPcd->p_FmPcdPlcr);

    if (!numOfProfiles)
        return 0;

    if ((numOfProfiles > FM_PCD_PLCR_NUM_ENTRIES) ||
        (base + numOfProfiles > FM_PCD_PLCR_NUM_ENTRIES))
        return (uint16_t)ILLEGAL_BASE;

    if (p_FmPcd->h_IpcSession)
    {
        t_FmIpcResourceAllocParams      ipcAllocParams;
        t_FmPcdIpcMsg                   msg;
        t_FmPcdIpcReply                 reply;
        t_Error                         err;
        uint32_t                        replyLength;

        FUNC7(&msg, 0, sizeof(msg));
        FUNC7(&reply, 0, sizeof(reply));
        FUNC7(&ipcAllocParams, 0, sizeof(t_FmIpcResourceAllocParams));
        ipcAllocParams.guestId         = p_FmPcd->guestId;
        ipcAllocParams.num             = p_FmPcd->p_FmPcdPlcr->partNumOfPlcrProfiles;
        ipcAllocParams.base            = p_FmPcd->p_FmPcdPlcr->partPlcrProfilesBase;
        msg.msgId                      = FM_PCD_ALLOC_PROFILES;
        FUNC6(msg.msgBody, &ipcAllocParams, sizeof(t_FmIpcResourceAllocParams));
        replyLength = sizeof(uint32_t) + sizeof(uint16_t);
        err = FUNC3(p_FmPcd->h_IpcSession,
                                (uint8_t*)&msg,
                                sizeof(msg.msgId) + sizeof(t_FmIpcResourceAllocParams),
                                (uint8_t*)&reply,
                                &replyLength,
                                NULL,
                                NULL);
        if ((err != E_OK) ||
            (replyLength != (sizeof(uint32_t) + sizeof(uint16_t))))
        {
            FUNC2(MAJOR, err, NO_MSG);
            return (uint16_t)ILLEGAL_BASE;
        }
        else
            FUNC6((uint8_t*)&p_FmPcd->p_FmPcdPlcr->partPlcrProfilesBase, reply.replyBody, sizeof(uint16_t));
        if (p_FmPcd->p_FmPcdPlcr->partPlcrProfilesBase == (uint16_t)ILLEGAL_BASE)
        {
            FUNC2(MAJOR, err, NO_MSG);
            return (uint16_t)ILLEGAL_BASE;
        }
    }
    else if (p_FmPcd->guestId != NCSW_MASTER_ID)
    {
        FUNC1(WARNING, ("FM Guest mode, without IPC - can't validate Policer-profiles range!"));
        return (uint16_t)ILLEGAL_BASE;
    }

    intFlags = FUNC4(p_FmPcd->h_Spinlock);
    for (i=base; i<(base+numOfProfiles); i++)
        if (p_FmPcd->p_FmPcdPlcr->profiles[i].profilesMng.ownerId == (uint8_t)ILLEGAL_BASE)
            profilesFound++;
        else
            break;

    if (profilesFound == numOfProfiles)
        for (i=base; i<(base+numOfProfiles); i++)
            p_FmPcd->p_FmPcdPlcr->profiles[i].profilesMng.ownerId = guestId;
    else
    {
        FUNC5(p_FmPcd->h_Spinlock, intFlags);
        return (uint16_t)ILLEGAL_BASE;
    }
    FUNC5(p_FmPcd->h_Spinlock, intFlags);

    return base;
}