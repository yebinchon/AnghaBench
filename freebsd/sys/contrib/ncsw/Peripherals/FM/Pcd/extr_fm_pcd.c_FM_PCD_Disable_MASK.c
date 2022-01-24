#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_8__ {scalar_t__ error; int /*<<< orphan*/  msgId; } ;
typedef  TYPE_1__ t_FmPcdIpcReply ;
typedef  TYPE_1__ t_FmPcdIpcMsg ;
struct TYPE_9__ {scalar_t__ guestId; scalar_t__ numOfEnabledGuestPartitionsPcds; void* enabled; scalar_t__ p_FmPcdPrs; scalar_t__ p_FmPcdPlcr; scalar_t__ p_FmPcdKg; scalar_t__ h_IpcSession; } ;
typedef  TYPE_3__ t_FmPcd ;
typedef  scalar_t__ t_Error ;
typedef  int /*<<< orphan*/  reply ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 scalar_t__ E_INVALID_STATE ; 
 scalar_t__ E_INVALID_VALUE ; 
 scalar_t__ E_NOT_SUPPORTED ; 
 scalar_t__ E_OK ; 
 void* FALSE ; 
 int /*<<< orphan*/  FM_PCD_GUEST_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  MINOR ; 
 scalar_t__ NCSW_MASTER_ID ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

t_Error FUNC7(t_Handle h_FmPcd)
{
    t_FmPcd             *p_FmPcd = (t_FmPcd*)h_FmPcd;
    t_Error             err = E_OK;

    FUNC4(h_FmPcd, E_INVALID_HANDLE);

    if (!p_FmPcd->enabled)
        return E_OK;

    if ((p_FmPcd->guestId != NCSW_MASTER_ID) &&
        p_FmPcd->h_IpcSession)
    {
        t_FmPcdIpcMsg       msg;
        t_FmPcdIpcReply     reply;
        uint32_t            replyLength;

        FUNC6(&reply, 0, sizeof(reply));
        FUNC6(&msg, 0, sizeof(msg));
        msg.msgId = FM_PCD_GUEST_DISABLE;
        replyLength = sizeof(uint32_t);
        if ((err = FUNC5(p_FmPcd->h_IpcSession,
                                     (uint8_t*)&msg,
                                     sizeof(msg.msgId),
                                     (uint8_t*)&reply,
                                     &replyLength,
                                     NULL,
                                     NULL)) != E_OK)
            FUNC3(MAJOR, err, NO_MSG);
        if (replyLength != sizeof(uint32_t))
            FUNC3(MAJOR, E_INVALID_VALUE, ("IPC reply length mismatch"));
        if (reply.error == E_OK)
            p_FmPcd->enabled = FALSE;

        return (t_Error)(reply.error);
    }
    else if (p_FmPcd->guestId != NCSW_MASTER_ID)
        FUNC3(MINOR, E_NOT_SUPPORTED,
                     ("running in guest-mode without IPC!"));

    if (p_FmPcd->numOfEnabledGuestPartitionsPcds != 0)
        FUNC3(MAJOR, E_INVALID_STATE,
                     ("Trying to disable a master partition PCD while"
                      "guest partitions are still enabled!"));

    if (p_FmPcd->p_FmPcdKg)
         FUNC0(p_FmPcd);

    if (p_FmPcd->p_FmPcdPlcr)
        FUNC1(p_FmPcd);

    if (p_FmPcd->p_FmPcdPrs)
        FUNC2(p_FmPcd);

    p_FmPcd->enabled = FALSE;

    return E_OK;
}