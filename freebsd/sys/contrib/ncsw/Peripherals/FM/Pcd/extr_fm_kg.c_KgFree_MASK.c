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
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_12__ {int /*<<< orphan*/  error; int /*<<< orphan*/  msgBody; int /*<<< orphan*/  msgId; } ;
typedef  TYPE_2__ t_FmPcdIpcReply ;
typedef  TYPE_2__ t_FmPcdIpcMsg ;
struct TYPE_13__ {int numOfSchemes; scalar_t__ guestId; int /*<<< orphan*/  schemesIds; } ;
typedef  TYPE_4__ t_FmPcdIpcKgSchemesParams ;
struct TYPE_14__ {scalar_t__ guestId; TYPE_1__* p_FmPcdKg; int /*<<< orphan*/  h_IpcSession; int /*<<< orphan*/  h_Fm; } ;
typedef  TYPE_5__ t_FmPcd ;
typedef  scalar_t__ t_Error ;
typedef  int /*<<< orphan*/  reply ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  kgAlloc ;
struct TYPE_11__ {int numOfSchemes; scalar_t__ h_HwSpinlock; TYPE_4__* schemesIds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ E_INVALID_VALUE ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  FM_PCD_FREE_KG_SCHEMES ; 
 int FM_PCD_KG_NUM_OF_SCHEMES ; 
 scalar_t__ FUNC1 (TYPE_5__*,int,scalar_t__,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 scalar_t__ NCSW_MASTER_ID ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  e_FM_INTR_TYPE_ERR ; 
 int /*<<< orphan*/  e_FM_MOD_KG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

t_Error FUNC8(t_FmPcd *p_FmPcd)
{
    t_FmPcdIpcKgSchemesParams       kgAlloc;
    t_Error                         err = E_OK;
    t_FmPcdIpcMsg                   msg;
    uint32_t                        replyLength;
    t_FmPcdIpcReply                 reply;

    FUNC2(p_FmPcd->h_Fm, e_FM_MOD_KG, 0, e_FM_INTR_TYPE_ERR);

    if (p_FmPcd->guestId == NCSW_MASTER_ID)
    {
        err = FUNC1(p_FmPcd,
                                    p_FmPcd->p_FmPcdKg->numOfSchemes,
                                    p_FmPcd->guestId,
                                    p_FmPcd->p_FmPcdKg->schemesIds);
        if (err)
            FUNC3(MAJOR, err, NO_MSG);

        if (p_FmPcd->p_FmPcdKg->h_HwSpinlock)
            FUNC4(p_FmPcd->p_FmPcdKg->h_HwSpinlock);

        return E_OK;
    }

    /* guest */
    FUNC7(&reply, 0, sizeof(reply));
    FUNC7(&msg, 0, sizeof(msg));
    kgAlloc.numOfSchemes = p_FmPcd->p_FmPcdKg->numOfSchemes;
    kgAlloc.guestId = p_FmPcd->guestId;
    FUNC0(kgAlloc.numOfSchemes < FM_PCD_KG_NUM_OF_SCHEMES);
    FUNC6(kgAlloc.schemesIds, p_FmPcd->p_FmPcdKg->schemesIds, (sizeof(uint8_t))*kgAlloc.numOfSchemes);
    msg.msgId = FM_PCD_FREE_KG_SCHEMES;
    FUNC6(msg.msgBody, &kgAlloc, sizeof(kgAlloc));
    replyLength = sizeof(uint32_t);
    if ((err = FUNC5(p_FmPcd->h_IpcSession,
                                 (uint8_t*)&msg,
                                 sizeof(msg.msgId) + sizeof(kgAlloc),
                                 (uint8_t*)&reply,
                                 &replyLength,
                                 NULL,
                                 NULL)) != E_OK)
        FUNC3(MAJOR, err, NO_MSG);
    if (replyLength != sizeof(uint32_t))
        FUNC3(MAJOR, E_INVALID_VALUE, ("IPC reply length mismatch"));

    if (p_FmPcd->p_FmPcdKg->h_HwSpinlock)
        FUNC4(p_FmPcd->p_FmPcdKg->h_HwSpinlock);

    return (t_Error)reply.error;
}