#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_18__ {int* msgBody; scalar_t__ replyBody; int /*<<< orphan*/  msgId; } ;
typedef  TYPE_1__ t_FmPcdIpcReply ;
typedef  TYPE_1__ t_FmPcdIpcMsg ;
struct TYPE_19__ {int guestId; int /*<<< orphan*/  h_Fm; struct TYPE_19__* p_FmPcdDriverParam; void* capwapFrameIdAddr; int /*<<< orphan*/  h_FmMuram; void* ipv6FrameIdAddr; TYPE_1__* fmPcdModuleName; scalar_t__ p_FmPcdPrs; scalar_t__ p_FmPcdPlcr; scalar_t__ p_FmPcdKg; scalar_t__ h_IpcSession; TYPE_1__* fmPcdIpcHandlerModuleName; int /*<<< orphan*/  fmRevInfo; } ;
typedef  TYPE_3__ t_FmPcd ;
typedef  scalar_t__ t_Error ;
typedef  int /*<<< orphan*/  reply ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  isMasterAlive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CheckFmPcdParameters ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 scalar_t__ E_INVALID_STATE ; 
 scalar_t__ E_INVALID_VALUE ; 
 scalar_t__ E_NO_MEMORY ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FM_PCD_MASTER_IS_ALIVE ; 
 int /*<<< orphan*/  FM_PCD_MAX_REPLY_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IpcMsgCompletionCB ; 
 int /*<<< orphan*/  IpcMsgHandlerCB ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  MAJOR ; 
 int MODULE_NAME_SIZE ; 
 int NCSW_MASTER_ID ; 
 char* NO_MSG ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 scalar_t__ FUNC17 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC18 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (scalar_t__,scalar_t__*,int,scalar_t__*,int*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ blockingFlag ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

t_Error FUNC21(t_Handle h_FmPcd)
{
    t_FmPcd         *p_FmPcd = (t_FmPcd*)h_FmPcd;
    t_Error         err = E_OK;
    t_FmPcdIpcMsg   msg;

    FUNC13(p_FmPcd, E_INVALID_HANDLE);
    FUNC13(p_FmPcd->p_FmPcdDriverParam, E_INVALID_HANDLE);

    FUNC1(p_FmPcd->h_Fm, &p_FmPcd->fmRevInfo);

    if (p_FmPcd->guestId != NCSW_MASTER_ID)
    {
        FUNC20(p_FmPcd->fmPcdIpcHandlerModuleName, 0, (sizeof(char)) * MODULE_NAME_SIZE);
        if (FUNC14 (p_FmPcd->fmPcdIpcHandlerModuleName, "FM_PCD_%d_%d", FUNC4(p_FmPcd->h_Fm), NCSW_MASTER_ID) != 10)
            FUNC12(MAJOR, E_INVALID_STATE, ("Sprint failed"));
        FUNC20(p_FmPcd->fmPcdModuleName, 0, (sizeof(char)) * MODULE_NAME_SIZE);
        if (FUNC14 (p_FmPcd->fmPcdModuleName, "FM_PCD_%d_%d",FUNC4(p_FmPcd->h_Fm), p_FmPcd->guestId) != (p_FmPcd->guestId<10 ? 10:11))
            FUNC12(MAJOR, E_INVALID_STATE, ("Sprint failed"));

        p_FmPcd->h_IpcSession = FUNC17(p_FmPcd->fmPcdIpcHandlerModuleName, p_FmPcd->fmPcdModuleName);
        if (p_FmPcd->h_IpcSession)
        {
            t_FmPcdIpcReply         reply;
            uint32_t                replyLength;
            uint8_t                 isMasterAlive = 0;

            FUNC20(&msg, 0, sizeof(msg));
            FUNC20(&reply, 0, sizeof(reply));
            msg.msgId = FM_PCD_MASTER_IS_ALIVE;
            msg.msgBody[0] = p_FmPcd->guestId;
            blockingFlag = TRUE;

            do
            {
                replyLength = sizeof(uint32_t) + sizeof(isMasterAlive);
                if ((err = FUNC19(p_FmPcd->h_IpcSession,
                                             (uint8_t*)&msg,
                                             sizeof(msg.msgId)+sizeof(p_FmPcd->guestId),
                                             (uint8_t*)&reply,
                                             &replyLength,
                                             IpcMsgCompletionCB,
                                             h_FmPcd)) != E_OK)
                    FUNC11(MAJOR, err, NO_MSG);
                while (blockingFlag) ;
                if (replyLength != (sizeof(uint32_t) + sizeof(isMasterAlive)))
                    FUNC11(MAJOR, E_INVALID_VALUE, ("IPC reply length mismatch"));
                isMasterAlive = *(uint8_t*)(reply.replyBody);
            } while (!isMasterAlive);
        }
    }

    FUNC0(p_FmPcd, CheckFmPcdParameters);

    if (p_FmPcd->p_FmPcdKg)
    {
        err = FUNC7(p_FmPcd);
        if (err)
            FUNC12(MAJOR, err, NO_MSG);
    }

    if (p_FmPcd->p_FmPcdPlcr)
    {
        err = FUNC9(p_FmPcd);
        if (err)
            FUNC12(MAJOR, err, NO_MSG);
    }

    if (p_FmPcd->p_FmPcdPrs)
    {
        err = FUNC10(p_FmPcd);
        if (err)
            FUNC12(MAJOR, err, NO_MSG);
    }

    if (p_FmPcd->guestId == NCSW_MASTER_ID)
    {
         /* register to inter-core messaging mechanism */
        FUNC20(p_FmPcd->fmPcdModuleName, 0, (sizeof(char)) * MODULE_NAME_SIZE);
        if (FUNC14 (p_FmPcd->fmPcdModuleName, "FM_PCD_%d_%d",FUNC4(p_FmPcd->h_Fm),NCSW_MASTER_ID) != 10)
            FUNC12(MAJOR, E_INVALID_STATE, ("Sprint failed"));
        err = FUNC18(p_FmPcd->fmPcdModuleName, IpcMsgHandlerCB, p_FmPcd, FM_PCD_MAX_REPLY_SIZE);
        if (err)
            FUNC12(MAJOR, err, NO_MSG);
    }

    /* IPv6 Frame-Id used for fragmentation */
    p_FmPcd->ipv6FrameIdAddr = FUNC8(FUNC2(p_FmPcd->h_FmMuram, 4, 4));
    if (!p_FmPcd->ipv6FrameIdAddr)
    {
        FUNC3(p_FmPcd);
        FUNC12(MAJOR, E_NO_MEMORY, ("MURAM allocation for IPv6 Frame-Id"));
    }
    FUNC6(FUNC15(p_FmPcd->ipv6FrameIdAddr), 0,  4);

    /* CAPWAP Frame-Id used for fragmentation */
    p_FmPcd->capwapFrameIdAddr = FUNC8(FUNC2(p_FmPcd->h_FmMuram, 2, 4));
    if (!p_FmPcd->capwapFrameIdAddr)
    {
        FUNC3(p_FmPcd);
        FUNC12(MAJOR, E_NO_MEMORY, ("MURAM allocation for CAPWAP Frame-Id"));
    }
    FUNC6(FUNC15(p_FmPcd->capwapFrameIdAddr), 0,  2);

    FUNC16(p_FmPcd->p_FmPcdDriverParam);
    p_FmPcd->p_FmPcdDriverParam = NULL;

    FUNC5(p_FmPcd->h_Fm, p_FmPcd);

    return E_OK;
}