#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_10__ {int /*<<< orphan*/  msgBody; int /*<<< orphan*/  msgId; } ;
typedef  TYPE_3__ t_FmIpcMsg ;
struct TYPE_8__ {size_t id; scalar_t__ enumType; } ;
struct TYPE_11__ {scalar_t__ maxFrameLength; TYPE_1__ macParams; } ;
typedef  TYPE_4__ t_FmIpcMacMaxFrameParams ;
struct TYPE_12__ {scalar_t__ guestId; TYPE_2__* p_FmStateStruct; scalar_t__* h_IpcSessions; } ;
typedef  TYPE_5__ t_Fm ;
typedef  scalar_t__ t_Error ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  macMaxFrameLengthParams ;
typedef  scalar_t__ e_FmMacType ;
struct TYPE_9__ {scalar_t__* portMaxFrameLengths10G; scalar_t__* portMaxFrameLengths1G; scalar_t__* macMaxFrameLengths1G; scalar_t__* macMaxFrameLengths10G; } ;

/* Variables and functions */
 scalar_t__ E_INVALID_VALUE ; 
 scalar_t__ E_NOT_SUPPORTED ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  FM_SET_MAC_MAX_FRAME ; 
 int /*<<< orphan*/  MINOR ; 
 scalar_t__ NCSW_MASTER_ID ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,size_t*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ e_FM_MAC_10G ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

t_Error FUNC5(t_Handle h_Fm, e_FmMacType type, uint8_t macId, uint16_t mtu)
{
    t_Fm                        *p_Fm = (t_Fm*)h_Fm;

    if ((p_Fm->guestId != NCSW_MASTER_ID) &&
        p_Fm->h_IpcSessions[0])
    {
        t_FmIpcMacMaxFrameParams    macMaxFrameLengthParams;
        t_Error                     err;
        t_FmIpcMsg                  msg;

        FUNC4(&msg, 0, sizeof(msg));
        macMaxFrameLengthParams.macParams.id = macId;
        macMaxFrameLengthParams.macParams.enumType = (uint32_t)type;
        macMaxFrameLengthParams.maxFrameLength = (uint16_t)mtu;
        msg.msgId = FM_SET_MAC_MAX_FRAME;
        FUNC3(msg.msgBody,  &macMaxFrameLengthParams, sizeof(macMaxFrameLengthParams));
        err = FUNC2(p_Fm->h_IpcSessions[0],
                                (uint8_t*)&msg,
                                sizeof(msg.msgId)+sizeof(macMaxFrameLengthParams),
                                NULL,
                                NULL,
                                NULL,
                                NULL);
        if (err != E_OK)
            FUNC0(MINOR, err, NO_MSG);
        return E_OK;
    }
    else if (p_Fm->guestId != NCSW_MASTER_ID)
        FUNC0(MINOR, E_NOT_SUPPORTED,
                     ("running in guest-mode without IPC!"));

    /* if port is already initialized, check that MaxFrameLength is smaller
     * or equal to the port's max */
#if (defined(FM_MAX_NUM_OF_10G_MACS) && (FM_MAX_NUM_OF_10G_MACS))
    if (type == e_FM_MAC_10G)
    {
        if ((!p_Fm->p_FmStateStruct->portMaxFrameLengths10G[macId])
           || (p_Fm->p_FmStateStruct->portMaxFrameLengths10G[macId] &&
              (mtu <= p_Fm->p_FmStateStruct->portMaxFrameLengths10G[macId])))
               p_Fm->p_FmStateStruct->macMaxFrameLengths10G[macId] = mtu;
        else
            RETURN_ERROR(MINOR, E_INVALID_VALUE, ("MAC maxFrameLength is larger than Port maxFrameLength"));

    }
    else
#else
    FUNC1(type);
#endif /* (defined(FM_MAX_NUM_OF_10G_MACS) && ... */
    if ((!p_Fm->p_FmStateStruct->portMaxFrameLengths1G[macId])
       || (p_Fm->p_FmStateStruct->portMaxFrameLengths1G[macId] &&
          (mtu <= p_Fm->p_FmStateStruct->portMaxFrameLengths1G[macId])))
        p_Fm->p_FmStateStruct->macMaxFrameLengths1G[macId] = mtu;
    else
        FUNC0(MINOR, E_INVALID_VALUE, ("MAC maxFrameLength is larger than Port maxFrameLength"));

    return E_OK;
}