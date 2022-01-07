
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_25__ {int nextAdIdx; int cfg; int opCode; int hmcdBasePtr; } ;
typedef TYPE_3__ t_Hmtd ;
struct TYPE_23__ {scalar_t__ dontParseAfterManip; } ;
struct TYPE_24__ {TYPE_1__ hdr; } ;
struct TYPE_26__ {TYPE_5__* h_NextManip; TYPE_2__ u; } ;
typedef TYPE_4__ t_FmPcdManipParams ;
struct TYPE_27__ {scalar_t__ nextManipType; int tableSize; int dataSize; scalar_t__ unifiedPosition; int * h_Ad; scalar_t__ h_FmPcd; scalar_t__ muramAllocate; int * p_Hmct; void* cascaded; scalar_t__ dontParseAfterManip; int * p_Data; struct TYPE_27__* h_PrevManip; TYPE_4__ manipParams; struct TYPE_27__* h_NextManip; } ;
typedef TYPE_5__ t_FmPcdManip ;
struct TYPE_28__ {scalar_t__ h_FmMuram; scalar_t__ physicalMuramBase; } ;
typedef TYPE_6__ t_FmPcd ;
typedef scalar_t__ t_Error ;


 scalar_t__ BuildHmct (TYPE_5__*,TYPE_4__*,int *,int *,void*) ;
 scalar_t__ CalculateTableSize (TYPE_4__*,int*,int*) ;
 scalar_t__ E_NO_MEMORY ;
 scalar_t__ E_OK ;
 void* FALSE ;
 scalar_t__ FM_MURAM_AllocMem (scalar_t__,int,int) ;
 int FM_MURAM_FreeMem (scalar_t__,int *) ;
 scalar_t__ FM_PCD_CC_AD_TABLE_ALIGN ;
 scalar_t__ FmPcdUpdateCcShadow (scalar_t__,int,int) ;
 scalar_t__ GetDataSize (TYPE_5__*) ;
 scalar_t__ GetHmctSize (TYPE_5__*) ;
 scalar_t__ GetManipInfo (TYPE_5__*,int ) ;
 int HMAN_OC ;
 int HMTD_CFG_NEXT_AD_EN ;
 int HMTD_CFG_PRS_AFTER_HM ;
 int HMTD_CFG_TYPE ;
 int MAJOR ;
 scalar_t__ MANIP_DONT_REPARSE (TYPE_5__*) ;
 int * MANIP_GET_HMTD_PTR (TYPE_5__*) ;
 scalar_t__ MANIP_GET_MURAM (TYPE_5__*) ;
 scalar_t__ MANIP_GET_TYPE (TYPE_5__*) ;
 scalar_t__ MANIP_IS_CASCADED (TYPE_5__*) ;
 scalar_t__ MANIP_IS_UNIFIED_NON_LAST (TYPE_5__*) ;
 int MANIP_SET_DATA_PTR (TYPE_5__*,int *) ;
 int MANIP_SET_HMCT_PTR (TYPE_5__*,int *) ;
 int MINOR ;
 char* NO_MSG ;
 scalar_t__ PTR_MOVE (int *,int) ;
 int PTR_TO_UINT (int *) ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 void* TRUE ;
 int WRITE_UINT16 (int,int) ;
 int WRITE_UINT32 (int ,int) ;
 int WRITE_UINT8 (int ,int ) ;
 int XX_Free (int *) ;
 scalar_t__ XX_VirtToPhys (int *) ;
 scalar_t__ e_FM_PCD_MANIP_HDR ;
 int e_MANIP_HMCT ;
 scalar_t__ e_MANIP_UNIFIED_FIRST ;

__attribute__((used)) static t_Error CreateManipActionNew(t_FmPcdManip *p_Manip,
                                    t_FmPcdManipParams *p_FmPcdManipParams)
{
    t_FmPcdManip *p_CurManip;
    t_Error err;
    uint32_t nextSize = 0, totalSize;
    uint16_t tmpReg;
    uint8_t *p_OldHmct, *p_TmpHmctPtr, *p_TmpDataPtr;



    p_Manip->dontParseAfterManip =
            p_FmPcdManipParams->u.hdr.dontParseAfterManip;

    if (p_FmPcdManipParams->h_NextManip)
    {
        p_Manip->nextManipType = MANIP_GET_TYPE(p_FmPcdManipParams->h_NextManip);

        if ((p_Manip->nextManipType == e_FM_PCD_MANIP_HDR) && p_Manip->dontParseAfterManip)
            nextSize = (uint32_t)(GetHmctSize(p_FmPcdManipParams->h_NextManip)
                    + GetDataSize(p_FmPcdManipParams->h_NextManip));
        else
            p_Manip->cascaded = TRUE;


        if (MANIP_IS_CASCADED(p_FmPcdManipParams->h_NextManip))
            p_Manip->cascaded = TRUE;
    }



    err = CalculateTableSize(p_FmPcdManipParams, &p_Manip->tableSize,
                             &p_Manip->dataSize);
    if (err)
        RETURN_ERROR(MINOR, err, NO_MSG);

    totalSize = (uint16_t)(p_Manip->tableSize + p_Manip->dataSize + nextSize);

    p_Manip->p_Hmct = (uint8_t*)FM_MURAM_AllocMem(
            ((t_FmPcd *)p_Manip->h_FmPcd)->h_FmMuram, totalSize, 4);
    if (!p_Manip->p_Hmct)
        RETURN_ERROR(MAJOR, E_NO_MEMORY, ("MURAM alloc failed"));

    if (p_Manip->dataSize)
        p_Manip->p_Data =
                (uint8_t*)PTR_MOVE(p_Manip->p_Hmct, (p_Manip->tableSize + nextSize));
    err = FmPcdUpdateCcShadow(p_Manip->h_FmPcd, (uint32_t)(totalSize + 16),
                              (uint16_t)FM_PCD_CC_AD_TABLE_ALIGN);
    if (err != E_OK)
    {
        FM_MURAM_FreeMem(p_Manip->h_FmPcd, p_Manip->p_Hmct);
        RETURN_ERROR(MAJOR, E_NO_MEMORY,
                     ("MURAM allocation for HdrManip node shadow"));
    }

    if (p_FmPcdManipParams->h_NextManip
            && (p_Manip->nextManipType == e_FM_PCD_MANIP_HDR)
            && (MANIP_DONT_REPARSE(p_Manip)))
    {
        p_OldHmct = (uint8_t *)GetManipInfo(p_FmPcdManipParams->h_NextManip,
                                            e_MANIP_HMCT);
        p_CurManip = p_FmPcdManipParams->h_NextManip;

        while (MANIP_IS_UNIFIED_NON_LAST(p_CurManip))
            p_CurManip = p_CurManip->h_NextManip;

        while (p_CurManip)
        {



            p_TmpHmctPtr = (uint8_t*)PTR_MOVE(p_Manip->p_Hmct,
                    (p_Manip->tableSize +
                            (PTR_TO_UINT(p_CurManip->p_Hmct) -
                                    PTR_TO_UINT(p_OldHmct))));
            if (p_CurManip->p_Data)
                p_TmpDataPtr = (uint8_t*)PTR_MOVE(p_Manip->p_Hmct,
                        (p_Manip->tableSize +
                                (PTR_TO_UINT(p_CurManip->p_Data) -
                                        PTR_TO_UINT(p_OldHmct))));
            else
                p_TmpDataPtr = ((void*)0);

            BuildHmct(p_CurManip, &p_CurManip->manipParams, p_TmpHmctPtr,
                      p_TmpDataPtr, FALSE);

            MANIP_SET_HMCT_PTR(p_CurManip, p_TmpHmctPtr);
            MANIP_SET_DATA_PTR(p_CurManip, p_TmpDataPtr);

            p_CurManip = p_CurManip->h_PrevManip;
        }

        FM_MURAM_FreeMem(MANIP_GET_MURAM(p_FmPcdManipParams->h_NextManip),
                         p_OldHmct);
    }


    err = BuildHmct(p_Manip, p_FmPcdManipParams, p_Manip->p_Hmct,
                    p_Manip->p_Data, TRUE);
    if (err)
    {
        FM_MURAM_FreeMem(p_Manip->h_FmPcd, p_Manip->p_Hmct);
        RETURN_ERROR(MINOR, err, NO_MSG);
    }


     tmpReg = HMTD_CFG_TYPE;


      if (!p_Manip->dontParseAfterManip)
          tmpReg |= HMTD_CFG_PRS_AFTER_HM;




    if (p_Manip->cascaded)
    {
        uint16_t nextAd;

        tmpReg |= HMTD_CFG_NEXT_AD_EN;




        if (p_Manip->unifiedPosition != e_MANIP_UNIFIED_FIRST)
            nextAd = (uint16_t)((uint32_t)(XX_VirtToPhys(MANIP_GET_HMTD_PTR(p_FmPcdManipParams->h_NextManip)) - (((t_FmPcd*)p_Manip->h_FmPcd)->physicalMuramBase)) >> 4);
        else
            nextAd = ((t_Hmtd *)((t_FmPcdManip *)p_FmPcdManipParams->h_NextManip)->h_Ad)->nextAdIdx;

        WRITE_UINT16(((t_Hmtd *)p_Manip->h_Ad)->nextAdIdx, nextAd);
    }

    WRITE_UINT16(((t_Hmtd *)p_Manip->h_Ad)->cfg, tmpReg);
    WRITE_UINT32(
            ((t_Hmtd *)p_Manip->h_Ad)->hmcdBasePtr,
            (uint32_t)(XX_VirtToPhys(p_Manip->p_Hmct) - (((t_FmPcd*)p_Manip->h_FmPcd)->physicalMuramBase)));

    WRITE_UINT8(((t_Hmtd *)p_Manip->h_Ad)->opCode, HMAN_OC);

    if (p_Manip->unifiedPosition == e_MANIP_UNIFIED_FIRST)
    {

        if (((t_FmPcdManip *)p_FmPcdManipParams->h_NextManip)->muramAllocate)
            FM_MURAM_FreeMem(
                    ((t_FmPcd *)((t_FmPcdManip *)p_FmPcdManipParams->h_NextManip)->h_FmPcd)->h_FmMuram,
                    ((t_FmPcdManip *)p_FmPcdManipParams->h_NextManip)->h_Ad);
        else
            XX_Free(((t_FmPcdManip *)p_FmPcdManipParams->h_NextManip)->h_Ad);
        ((t_FmPcdManip *)p_FmPcdManipParams->h_NextManip)->h_Ad = ((void*)0);
    }

    return E_OK;
}
