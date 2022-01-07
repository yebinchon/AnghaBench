
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int numOfSchemes; scalar_t__ guestId; int error; scalar_t__ replyBody; int msgBody; int msgId; } ;
typedef TYPE_2__ uint8_t ;
typedef int uint32_t ;
typedef TYPE_2__ t_FmPcdIpcReply ;
typedef TYPE_2__ t_FmPcdIpcMsg ;
typedef TYPE_2__ t_FmPcdIpcKgSchemesParams ;
struct TYPE_14__ {scalar_t__ guestId; TYPE_1__* p_FmPcdKg; int h_IpcSession; } ;
typedef TYPE_6__ t_FmPcd ;
typedef int t_Error ;
typedef int reply ;
typedef int msg ;
typedef int kgAlloc ;
struct TYPE_12__ {int numOfSchemes; int schemesIds; } ;


 int ASSERT_COND (int) ;
 int E_INVALID_VALUE ;
 int E_OK ;
 int FM_PCD_ALLOC_KG_SCHEMES ;
 int MAJOR ;
 scalar_t__ NCSW_MASTER_ID ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,int ,char*) ;
 int XX_IpcSendMessage (int ,TYPE_2__*,int,TYPE_2__*,int*,int *,int *) ;
 int memcpy (int ,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static t_Error KgInitGuest(t_FmPcd *p_FmPcd)
{
    t_Error err = E_OK;
    t_FmPcdIpcKgSchemesParams kgAlloc;
    uint32_t replyLength;
    t_FmPcdIpcReply reply;
    t_FmPcdIpcMsg msg;

    ASSERT_COND(p_FmPcd->guestId != NCSW_MASTER_ID);


    memset(&reply, 0, sizeof(reply));
    memset(&msg, 0, sizeof(msg));
    memset(&kgAlloc, 0, sizeof(t_FmPcdIpcKgSchemesParams));
    kgAlloc.numOfSchemes = p_FmPcd->p_FmPcdKg->numOfSchemes;
    kgAlloc.guestId = p_FmPcd->guestId;
    msg.msgId = FM_PCD_ALLOC_KG_SCHEMES;
    memcpy(msg.msgBody, &kgAlloc, sizeof(kgAlloc));
    replyLength = sizeof(uint32_t) + p_FmPcd->p_FmPcdKg->numOfSchemes*sizeof(uint8_t);
    if ((err = XX_IpcSendMessage(p_FmPcd->h_IpcSession,
                                 (uint8_t*)&msg,
                                 sizeof(msg.msgId) + sizeof(kgAlloc),
                                 (uint8_t*)&reply,
                                 &replyLength,
                                 ((void*)0),
                                 ((void*)0))) != E_OK)
        RETURN_ERROR(MAJOR, err, NO_MSG);
    if (replyLength != (sizeof(uint32_t) + p_FmPcd->p_FmPcdKg->numOfSchemes*sizeof(uint8_t)))
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("IPC reply length mismatch"));
    memcpy(p_FmPcd->p_FmPcdKg->schemesIds, (uint8_t*)(reply.replyBody),p_FmPcd->p_FmPcdKg->numOfSchemes*sizeof(uint8_t));

    return (t_Error)reply.error;
}
