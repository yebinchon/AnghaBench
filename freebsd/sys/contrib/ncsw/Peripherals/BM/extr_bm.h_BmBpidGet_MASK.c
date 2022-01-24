#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  t_Error ;
struct TYPE_8__ {TYPE_3__* replyBody; scalar_t__* msgBody; int /*<<< orphan*/  msgId; } ;
typedef  TYPE_1__ t_BmIpcReply ;
typedef  TYPE_1__ t_BmIpcMsg ;
struct TYPE_9__ {scalar_t__ bpid; } ;
typedef  TYPE_3__ t_BmIpcBpidParams ;
struct TYPE_10__ {int /*<<< orphan*/  h_BpidMm; scalar_t__ h_Session; } ;
typedef  TYPE_4__ t_Bm ;

/* Variables and functions */
 int /*<<< orphan*/  BM_FORCE_BPID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  E_INVALID_VALUE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  ILLEGAL_BASE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  MAJOR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ UINT32_MAX ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__*,int,scalar_t__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __inline__ uint32_t FUNC9(t_Bm *p_Bm, bool force, uint32_t base)
{
    uint64_t ans, size = 1;
    uint64_t alignment = 1;

    if (force)
    {
        if (FUNC4(p_Bm->h_BpidMm, (uint64_t)base))
        {
            ans = FUNC3(p_Bm->h_BpidMm,
                              base,
                              size,
                              "BM BPID MEM");
            ans = base;
        }
        else if (p_Bm->h_Session)
        {
            t_BmIpcMsg              msg;
            t_BmIpcReply            reply;
            uint32_t                replyLength;
            t_BmIpcBpidParams       ipcBpid;
            t_Error                 errCode = E_OK;

            FUNC8(&msg, 0, sizeof(t_BmIpcMsg));
            FUNC8(&reply, 0, sizeof(t_BmIpcReply));
            ipcBpid.bpid        = (uint8_t)base;
            msg.msgId           = BM_FORCE_BPID;
            FUNC7(msg.msgBody, &ipcBpid, sizeof(t_BmIpcBpidParams));
            replyLength = sizeof(uint32_t) + sizeof(uint32_t);
            if ((errCode = FUNC6(p_Bm->h_Session,
                                             (uint8_t*)&msg,
                                             sizeof(msg.msgId) + sizeof(t_BmIpcBpidParams),
                                             (uint8_t*)&reply,
                                             &replyLength,
                                             NULL,
                                             NULL)) != E_OK)
            {
                FUNC5(MAJOR, errCode, NO_MSG);
                return (uint32_t)ILLEGAL_BASE;
            }
            if (replyLength != (sizeof(uint32_t) + sizeof(uint32_t)))
            {
                FUNC5(MAJOR, E_INVALID_VALUE, ("IPC reply length mismatch"));
                return (uint32_t)ILLEGAL_BASE;
            }
            FUNC7((uint8_t*)&ans, reply.replyBody, sizeof(uint32_t));
        }
        else
        {
            FUNC0(WARNING, ("No Ipc - can't validate bpid."));
            ans = base;
        }
    }
    else
        ans = FUNC2(p_Bm->h_BpidMm,
                     size,
                     alignment,
                     "BM BPID MEM");
    FUNC1(ans < UINT32_MAX, ("Oops, %lx > UINT32_MAX!\n", ans));
    return (uint32_t)ans;
}