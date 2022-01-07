
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_16__ {int numOfClsPlanEntries; int* vectors; void* baseEntry; } ;
typedef TYPE_2__ t_FmPcdKgInterModuleClsPlanSet ;
struct TYPE_17__ {int numOfOptions; int* optVectors; int * options; int netEnvId; void* clsPlanGrpId; } ;
typedef TYPE_3__ t_FmPcdKgInterModuleClsPlanGrpParams ;
struct TYPE_18__ {int sizeOfGrp; int * optArray; void* baseEntry; scalar_t__ owners; int netEnvId; scalar_t__ used; } ;
typedef TYPE_4__ t_FmPcdKgClsPlanGrp ;
struct TYPE_19__ {scalar_t__ guestId; int numOfClsPlanEntries; scalar_t__ replyBody; scalar_t__ error; int msgBody; int msgId; } ;
typedef TYPE_5__ t_FmPcdIpcReply ;
typedef TYPE_5__ t_FmPcdIpcMsg ;
typedef TYPE_5__ t_FmPcdIpcKgClsPlanParams ;
struct TYPE_20__ {scalar_t__ guestId; int h_IpcSession; TYPE_1__* p_FmPcdKg; } ;
typedef TYPE_8__ t_FmPcd ;
typedef scalar_t__ t_Error ;
typedef int reply ;
typedef int msg ;
typedef int kgAlloc ;
struct TYPE_15__ {TYPE_4__* clsPlanGrps; void* emptyClsPlanGrpId; } ;


 int CLS_PLAN_NUM_PER_GRP ;
 scalar_t__ E_FULL ;
 scalar_t__ E_INVALID_STATE ;
 scalar_t__ E_INVALID_VALUE ;
 scalar_t__ E_OK ;
 int FM_MAX_NUM_OF_PORTS ;
 int FM_PCD_ALLOC_KG_CLSPLAN ;
 int FM_PCD_MAX_NUM_OF_CLS_PLANS ;
 int FM_PCD_MAX_NUM_OF_OPTIONS (int ) ;
 int FmPcdIncNetEnvOwners (TYPE_8__*,int ) ;
 int FmPcdSetClsPlanGrpId (TYPE_8__*,int ,void*) ;
 scalar_t__ KgAllocClsPlanEntries (scalar_t__,int,scalar_t__,void**) ;
 int MAJOR ;
 int MINOR ;
 scalar_t__ NCSW_MASTER_ID ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 scalar_t__ TRUE ;
 scalar_t__ XX_IpcSendMessage (int ,void**,int,void**,int*,int *,int *) ;
 int memcpy (int ,TYPE_5__*,int) ;
 int memset (TYPE_5__*,int ,int) ;

t_Error FmPcdKgBuildClsPlanGrp(t_Handle h_FmPcd, t_FmPcdKgInterModuleClsPlanGrpParams *p_Grp, t_FmPcdKgInterModuleClsPlanSet *p_ClsPlanSet)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;
    t_FmPcdKgClsPlanGrp *p_ClsPlanGrp;
    t_FmPcdIpcKgClsPlanParams kgAlloc;
    t_Error err = E_OK;
    uint32_t oredVectors = 0;
    int i, j;


    if (p_Grp->numOfOptions >= FM_PCD_MAX_NUM_OF_OPTIONS(FM_PCD_MAX_NUM_OF_CLS_PLANS))
        RETURN_ERROR(MAJOR, E_INVALID_VALUE,("Too many classification plan basic options selected."));


    for (i = 0; i < FM_MAX_NUM_OF_PORTS; i++)
        if (!p_FmPcd->p_FmPcdKg->clsPlanGrps[i].used)
            break;
    if (i == FM_MAX_NUM_OF_PORTS)
        RETURN_ERROR(MAJOR, E_FULL,("No classification plan groups available."));

    p_FmPcd->p_FmPcdKg->clsPlanGrps[i].used = TRUE;

    p_Grp->clsPlanGrpId = (uint8_t)i;

    if (p_Grp->numOfOptions == 0)
        p_FmPcd->p_FmPcdKg->emptyClsPlanGrpId = (uint8_t)i;

    p_ClsPlanGrp = &p_FmPcd->p_FmPcdKg->clsPlanGrps[i];
    p_ClsPlanGrp->netEnvId = p_Grp->netEnvId;
    p_ClsPlanGrp->owners = 0;
    FmPcdSetClsPlanGrpId(p_FmPcd, p_Grp->netEnvId, p_Grp->clsPlanGrpId);
    if (p_Grp->numOfOptions != 0)
        FmPcdIncNetEnvOwners(p_FmPcd, p_Grp->netEnvId);

    p_ClsPlanGrp->sizeOfGrp = (uint16_t)(1 << p_Grp->numOfOptions);

    if (p_ClsPlanGrp->sizeOfGrp < CLS_PLAN_NUM_PER_GRP)
        p_ClsPlanGrp->sizeOfGrp = CLS_PLAN_NUM_PER_GRP;
    if (p_FmPcd->guestId == NCSW_MASTER_ID)
    {
        err = KgAllocClsPlanEntries(h_FmPcd, p_ClsPlanGrp->sizeOfGrp, p_FmPcd->guestId, &p_ClsPlanGrp->baseEntry);

        if (err)
            RETURN_ERROR(MINOR, E_INVALID_STATE, NO_MSG);
    }
    else
    {
        t_FmPcdIpcMsg msg;
        uint32_t replyLength;
        t_FmPcdIpcReply reply;


        memset(&reply, 0, sizeof(reply));
        memset(&msg, 0, sizeof(msg));
        memset(&kgAlloc, 0, sizeof(kgAlloc));
        kgAlloc.guestId = p_FmPcd->guestId;
        kgAlloc.numOfClsPlanEntries = p_ClsPlanGrp->sizeOfGrp;
        msg.msgId = FM_PCD_ALLOC_KG_CLSPLAN;
        memcpy(msg.msgBody, &kgAlloc, sizeof(kgAlloc));
        replyLength = (sizeof(uint32_t) + sizeof(p_ClsPlanGrp->baseEntry));
        if ((err = XX_IpcSendMessage(p_FmPcd->h_IpcSession,
                                     (uint8_t*)&msg,
                                     sizeof(msg.msgId) + sizeof(kgAlloc),
                                     (uint8_t*)&reply,
                                     &replyLength,
                                     ((void*)0),
                                     ((void*)0))) != E_OK)
            RETURN_ERROR(MAJOR, err, NO_MSG);

        if (replyLength != (sizeof(uint32_t) + sizeof(p_ClsPlanGrp->baseEntry)))
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("IPC reply length mismatch"));
        if ((t_Error)reply.error != E_OK)
            RETURN_ERROR(MINOR, (t_Error)reply.error, NO_MSG);

        p_ClsPlanGrp->baseEntry = *(uint8_t*)(reply.replyBody);
    }


    p_ClsPlanSet->baseEntry = p_ClsPlanGrp->baseEntry;
    p_ClsPlanSet->numOfClsPlanEntries = p_ClsPlanGrp->sizeOfGrp;

    oredVectors = 0;
    for (i = 0; i<p_Grp->numOfOptions; i++)
    {
        oredVectors |= p_Grp->optVectors[i];

        p_ClsPlanGrp->optArray[i] = p_Grp->options[i];
    }



    for (j = 0; j<p_ClsPlanGrp->sizeOfGrp; j++)
        p_ClsPlanSet->vectors[j] = ~oredVectors;

    for (i = 0; i<p_Grp->numOfOptions; i++)
    {
        for (j = 0; j<p_ClsPlanGrp->sizeOfGrp; j++)
        {
            if (j & (1<<i))
                p_ClsPlanSet->vectors[j] |= p_Grp->optVectors[i];
        }
    }

    return E_OK;
}
