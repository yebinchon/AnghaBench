#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int numOfSchemes; scalar_t__ guestId; int /*<<< orphan*/  error; scalar_t__ replyBody; int /*<<< orphan*/  msgBody; int /*<<< orphan*/  msgId; } ;
typedef  TYPE_2__ uint8_t ;
typedef  int uint32_t ;
typedef  TYPE_2__ t_FmPcdIpcReply ;
typedef  TYPE_2__ t_FmPcdIpcMsg ;
typedef  TYPE_2__ t_FmPcdIpcKgSchemesParams ;
struct TYPE_14__ {scalar_t__ guestId; TYPE_1__* p_FmPcdKg; int /*<<< orphan*/  h_IpcSession; } ;
typedef  TYPE_6__ t_FmPcd ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int /*<<< orphan*/  reply ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  kgAlloc ;
struct TYPE_12__ {int numOfSchemes; int /*<<< orphan*/  schemesIds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  E_INVALID_VALUE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FM_PCD_ALLOC_KG_SCHEMES ; 
 int /*<<< orphan*/  MAJOR ; 
 scalar_t__ NCSW_MASTER_ID ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int,TYPE_2__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static t_Error FUNC5(t_FmPcd *p_FmPcd)
{
    t_Error                     err = E_OK;
    t_FmPcdIpcKgSchemesParams   kgAlloc;
    uint32_t                    replyLength;
    t_FmPcdIpcReply             reply;
    t_FmPcdIpcMsg               msg;

    FUNC0(p_FmPcd->guestId != NCSW_MASTER_ID);

    /* in GUEST_PARTITION, we use the IPC  */
    FUNC4(&reply, 0, sizeof(reply));
    FUNC4(&msg, 0, sizeof(msg));
    FUNC4(&kgAlloc, 0, sizeof(t_FmPcdIpcKgSchemesParams));
    kgAlloc.numOfSchemes = p_FmPcd->p_FmPcdKg->numOfSchemes;
    kgAlloc.guestId = p_FmPcd->guestId;
    msg.msgId = FM_PCD_ALLOC_KG_SCHEMES;
    FUNC3(msg.msgBody, &kgAlloc, sizeof(kgAlloc));
    replyLength = sizeof(uint32_t) + p_FmPcd->p_FmPcdKg->numOfSchemes*sizeof(uint8_t);
    if ((err = FUNC2(p_FmPcd->h_IpcSession,
                                 (uint8_t*)&msg,
                                 sizeof(msg.msgId) + sizeof(kgAlloc),
                                 (uint8_t*)&reply,
                                 &replyLength,
                                 NULL,
                                 NULL)) != E_OK)
        FUNC1(MAJOR, err, NO_MSG);
    if (replyLength != (sizeof(uint32_t) + p_FmPcd->p_FmPcdKg->numOfSchemes*sizeof(uint8_t)))
        FUNC1(MAJOR, E_INVALID_VALUE, ("IPC reply length mismatch"));
    FUNC3(p_FmPcd->p_FmPcdKg->schemesIds, (uint8_t*)(reply.replyBody),p_FmPcd->p_FmPcdKg->numOfSchemes*sizeof(uint8_t));

    return (t_Error)reply.error;
}