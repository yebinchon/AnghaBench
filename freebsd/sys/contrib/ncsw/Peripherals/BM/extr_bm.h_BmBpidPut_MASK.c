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
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  t_Error ;
struct TYPE_7__ {int /*<<< orphan*/  msgBody; int /*<<< orphan*/  msgId; } ;
typedef  TYPE_1__ t_BmIpcMsg ;
struct TYPE_8__ {scalar_t__ bpid; } ;
typedef  TYPE_2__ t_BmIpcBpidParams ;
struct TYPE_9__ {scalar_t__ h_Session; int /*<<< orphan*/  h_BpidMm; } ;
typedef  TYPE_3__ t_Bm ;

/* Variables and functions */
 int /*<<< orphan*/  BM_PUT_BPID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_NOT_FOUND ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  MAJOR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_MSG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __inline__ t_Error FUNC8(t_Bm *p_Bm, uint32_t base)
{
    if (FUNC2(p_Bm->h_BpidMm, (uint64_t)base))
    {
        if (FUNC3(p_Bm->h_BpidMm, (uint64_t)base) != base)
            return E_OK;
        else
            return FUNC1(E_NOT_FOUND);
    }
    else if (p_Bm->h_Session)
    {
        t_BmIpcMsg              msg;
        t_BmIpcBpidParams       ipcBpid;
        t_Error                 errCode = E_OK;

        FUNC7(&msg, 0, sizeof(t_BmIpcMsg));
        ipcBpid.bpid        = (uint8_t)base;
        msg.msgId           = BM_PUT_BPID;
        FUNC6(msg.msgBody, &ipcBpid, sizeof(t_BmIpcBpidParams));
        if ((errCode = FUNC5(p_Bm->h_Session,
                                         (uint8_t*)&msg,
                                         sizeof(msg.msgId) + sizeof(t_BmIpcBpidParams),
                                         NULL,
                                         NULL,
                                         NULL,
                                         NULL)) != E_OK)
            FUNC4(MAJOR, errCode, NO_MSG);
    }
    else
        FUNC0(WARNING, ("No Ipc - can't validate bpid."));
    return E_OK;
}