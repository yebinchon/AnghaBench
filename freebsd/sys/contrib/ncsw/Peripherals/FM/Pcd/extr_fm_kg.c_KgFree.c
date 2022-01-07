
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_12__ {int error; int msgBody; int msgId; } ;
typedef TYPE_2__ t_FmPcdIpcReply ;
typedef TYPE_2__ t_FmPcdIpcMsg ;
struct TYPE_13__ {int numOfSchemes; scalar_t__ guestId; int schemesIds; } ;
typedef TYPE_4__ t_FmPcdIpcKgSchemesParams ;
struct TYPE_14__ {scalar_t__ guestId; TYPE_1__* p_FmPcdKg; int h_IpcSession; int h_Fm; } ;
typedef TYPE_5__ t_FmPcd ;
typedef scalar_t__ t_Error ;
typedef int reply ;
typedef int msg ;
typedef int kgAlloc ;
struct TYPE_11__ {int numOfSchemes; scalar_t__ h_HwSpinlock; TYPE_4__* schemesIds; } ;


 int ASSERT_COND (int) ;
 scalar_t__ E_INVALID_VALUE ;
 scalar_t__ E_OK ;
 int FM_PCD_FREE_KG_SCHEMES ;
 int FM_PCD_KG_NUM_OF_SCHEMES ;
 scalar_t__ FmPcdKgFreeSchemes (TYPE_5__*,int,scalar_t__,TYPE_4__*) ;
 int FmUnregisterIntr (int ,int ,int ,int ) ;
 int MAJOR ;
 scalar_t__ NCSW_MASTER_ID ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int XX_FreeSpinlock (scalar_t__) ;
 scalar_t__ XX_IpcSendMessage (int ,int *,int,int *,int*,int *,int *) ;
 int e_FM_INTR_TYPE_ERR ;
 int e_FM_MOD_KG ;
 int memcpy (int ,TYPE_4__*,int) ;
 int memset (TYPE_2__*,int ,int) ;

t_Error KgFree(t_FmPcd *p_FmPcd)
{
    t_FmPcdIpcKgSchemesParams kgAlloc;
    t_Error err = E_OK;
    t_FmPcdIpcMsg msg;
    uint32_t replyLength;
    t_FmPcdIpcReply reply;

    FmUnregisterIntr(p_FmPcd->h_Fm, e_FM_MOD_KG, 0, e_FM_INTR_TYPE_ERR);

    if (p_FmPcd->guestId == NCSW_MASTER_ID)
    {
        err = FmPcdKgFreeSchemes(p_FmPcd,
                                    p_FmPcd->p_FmPcdKg->numOfSchemes,
                                    p_FmPcd->guestId,
                                    p_FmPcd->p_FmPcdKg->schemesIds);
        if (err)
            RETURN_ERROR(MAJOR, err, NO_MSG);

        if (p_FmPcd->p_FmPcdKg->h_HwSpinlock)
            XX_FreeSpinlock(p_FmPcd->p_FmPcdKg->h_HwSpinlock);

        return E_OK;
    }


    memset(&reply, 0, sizeof(reply));
    memset(&msg, 0, sizeof(msg));
    kgAlloc.numOfSchemes = p_FmPcd->p_FmPcdKg->numOfSchemes;
    kgAlloc.guestId = p_FmPcd->guestId;
    ASSERT_COND(kgAlloc.numOfSchemes < FM_PCD_KG_NUM_OF_SCHEMES);
    memcpy(kgAlloc.schemesIds, p_FmPcd->p_FmPcdKg->schemesIds, (sizeof(uint8_t))*kgAlloc.numOfSchemes);
    msg.msgId = FM_PCD_FREE_KG_SCHEMES;
    memcpy(msg.msgBody, &kgAlloc, sizeof(kgAlloc));
    replyLength = sizeof(uint32_t);
    if ((err = XX_IpcSendMessage(p_FmPcd->h_IpcSession,
                                 (uint8_t*)&msg,
                                 sizeof(msg.msgId) + sizeof(kgAlloc),
                                 (uint8_t*)&reply,
                                 &replyLength,
                                 ((void*)0),
                                 ((void*)0))) != E_OK)
        RETURN_ERROR(MAJOR, err, NO_MSG);
    if (replyLength != sizeof(uint32_t))
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("IPC reply length mismatch"));

    if (p_FmPcd->p_FmPcdKg->h_HwSpinlock)
        XX_FreeSpinlock(p_FmPcd->p_FmPcdKg->h_HwSpinlock);

    return (t_Error)reply.error;
}
