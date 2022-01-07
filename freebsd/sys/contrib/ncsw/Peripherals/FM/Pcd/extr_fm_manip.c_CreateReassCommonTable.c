
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_14__ {int expirationDelay; int timeOutTblPtr; int reassFrmDescPoolPtrLow; int liodnAndReassFrmDescPoolPtrHi; int reassFrmDescIndexPoolTblPtr; int timeoutModeAndFqid; } ;
typedef TYPE_2__ t_ReassCommonTbl ;
struct TYPE_13__ {scalar_t__ timeOutMode; int fqidForTimeOutFrames; int maxNumFramesInProcess; int dataLiodnOffset; int timeoutThresholdForReassmProcess; TYPE_2__* p_ReassCommonTbl; void* timeOutTblAddr; void* reassFrmDescrPoolTblAddr; int dataMemId; void* reassFrmDescrIndxPoolTblAddr; } ;
struct TYPE_15__ {TYPE_1__ reassmParams; scalar_t__ h_FmPcd; } ;
typedef TYPE_3__ t_FmPcdManip ;
struct TYPE_16__ {int h_FmMuram; scalar_t__ physicalMuramBase; int h_Fm; } ;
typedef TYPE_4__ t_FmPcd ;
typedef scalar_t__ t_Error ;


 scalar_t__ E_NOT_AVAILABLE ;
 scalar_t__ E_NO_MEMORY ;
 scalar_t__ E_OK ;
 scalar_t__ FM_MURAM_AllocMem (int ,int,int) ;
 int FM_MURAM_FreeMem (int ,TYPE_2__*) ;
 int FM_PCD_MANIP_REASM_COMMON_PARAM_TABLE_ALIGN ;
 int FM_PCD_MANIP_REASM_COMMON_PARAM_TABLE_SIZE ;
 int FM_PCD_MANIP_REASM_ELIODN_MASK ;
 scalar_t__ FM_PCD_MANIP_REASM_ELIODN_SHIFT ;
 int FM_PCD_MANIP_REASM_LIODN_MASK ;
 scalar_t__ FM_PCD_MANIP_REASM_LIODN_SHIFT ;
 int FM_PCD_MANIP_REASM_TIME_OUT_BETWEEN_FRAMES ;
 int FmGetTimeStampScale (int ) ;
 scalar_t__ FmPcdRegisterReassmPort (TYPE_4__*,TYPE_2__*) ;
 int MAJOR ;
 int MemSet8 (TYPE_2__*,int ,int) ;
 scalar_t__ PTR_MOVE (TYPE_2__*,int) ;
 void* PTR_TO_UINT (scalar_t__) ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 TYPE_2__* UINT_TO_PTR (void*) ;
 int WRITE_UINT16 (int,int) ;
 int WRITE_UINT32 (int ,int) ;
 scalar_t__ XX_MallocSmart (int,int ,int) ;
 scalar_t__ XX_VirtToPhys (TYPE_2__*) ;
 scalar_t__ e_FM_PCD_MANIP_TIME_OUT_BETWEEN_FRAMES ;

__attribute__((used)) static t_Error CreateReassCommonTable(t_FmPcdManip *p_Manip)
{
    uint32_t tmpReg32 = 0, i, bitFor1Micro;
    uint64_t tmpReg64, size;
    t_FmPcd *p_FmPcd = (t_FmPcd *)p_Manip->h_FmPcd;
    t_Error err = E_OK;

    bitFor1Micro = FmGetTimeStampScale(p_FmPcd->h_Fm);
    if (bitFor1Micro == 0)
        RETURN_ERROR(MAJOR, E_NOT_AVAILABLE, ("Timestamp scale"));



    p_Manip->reassmParams.p_ReassCommonTbl =
            (t_ReassCommonTbl *)FM_MURAM_AllocMem(
                    p_FmPcd->h_FmMuram,
                    FM_PCD_MANIP_REASM_COMMON_PARAM_TABLE_SIZE,
                    FM_PCD_MANIP_REASM_COMMON_PARAM_TABLE_ALIGN);

    if (!p_Manip->reassmParams.p_ReassCommonTbl)
        RETURN_ERROR(MAJOR, E_NO_MEMORY,
                     ("MURAM alloc for Reassembly common parameters table"));

    MemSet8(p_Manip->reassmParams.p_ReassCommonTbl, 0,
               FM_PCD_MANIP_REASM_COMMON_PARAM_TABLE_SIZE);


    tmpReg32 = 0;
    if (p_Manip->reassmParams.timeOutMode
            == e_FM_PCD_MANIP_TIME_OUT_BETWEEN_FRAMES)
        tmpReg32 |= FM_PCD_MANIP_REASM_TIME_OUT_BETWEEN_FRAMES;



    tmpReg32 |= p_Manip->reassmParams.fqidForTimeOutFrames;
    WRITE_UINT32(p_Manip->reassmParams.p_ReassCommonTbl->timeoutModeAndFqid,
                 tmpReg32);


    size = p_Manip->reassmParams.maxNumFramesInProcess + 129;


    p_Manip->reassmParams.reassFrmDescrIndxPoolTblAddr =
            PTR_TO_UINT(FM_MURAM_AllocMem(p_FmPcd->h_FmMuram,
                            (uint32_t)(size * 2),
                            256));
    if (!p_Manip->reassmParams.reassFrmDescrIndxPoolTblAddr)
        RETURN_ERROR(
                MAJOR, E_NO_MEMORY,
                ("MURAM alloc for Reassembly frame descriptor indexes pool"));

    MemSet8(UINT_TO_PTR(p_Manip->reassmParams.reassFrmDescrIndxPoolTblAddr),
               0, (uint32_t)(size * 2));




    for (i = 0; i < (size - 1); i++)
        WRITE_UINT16(
                *(uint16_t *)PTR_MOVE(UINT_TO_PTR(p_Manip->reassmParams.reassFrmDescrIndxPoolTblAddr), (i<<1)),
                (uint16_t)(i+1));


    tmpReg32 = (uint32_t)(XX_VirtToPhys(
            UINT_TO_PTR(p_Manip->reassmParams.reassFrmDescrIndxPoolTblAddr))
            - p_FmPcd->physicalMuramBase);
    WRITE_UINT32(
            p_Manip->reassmParams.p_ReassCommonTbl->reassFrmDescIndexPoolTblPtr,
            tmpReg32);



    p_Manip->reassmParams.reassFrmDescrPoolTblAddr =
            PTR_TO_UINT(XX_MallocSmart((uint32_t)(size * 64), p_Manip->reassmParams.dataMemId, 64));

    if (!p_Manip->reassmParams.reassFrmDescrPoolTblAddr)
        RETURN_ERROR(MAJOR, E_NO_MEMORY, ("Memory allocation FAILED"));

    MemSet8(UINT_TO_PTR(p_Manip->reassmParams.reassFrmDescrPoolTblAddr), 0,
               (uint32_t)(size * 64));


    tmpReg64 = (uint64_t)(XX_VirtToPhys(
            UINT_TO_PTR(p_Manip->reassmParams.reassFrmDescrPoolTblAddr)));
    tmpReg64 |= ((uint64_t)(p_Manip->reassmParams.dataLiodnOffset
            & FM_PCD_MANIP_REASM_LIODN_MASK)
            << (uint64_t)FM_PCD_MANIP_REASM_LIODN_SHIFT);
    tmpReg64 |= ((uint64_t)(p_Manip->reassmParams.dataLiodnOffset
            & FM_PCD_MANIP_REASM_ELIODN_MASK)
            << (uint64_t)FM_PCD_MANIP_REASM_ELIODN_SHIFT);
    WRITE_UINT32(
            p_Manip->reassmParams.p_ReassCommonTbl->liodnAndReassFrmDescPoolPtrHi,
            (uint32_t)(tmpReg64 >> 32));
    WRITE_UINT32(
            p_Manip->reassmParams.p_ReassCommonTbl->reassFrmDescPoolPtrLow,
            (uint32_t)tmpReg64);



    p_Manip->reassmParams.timeOutTblAddr =
            PTR_TO_UINT(FM_MURAM_AllocMem(p_FmPcd->h_FmMuram, (uint32_t)(size * 8),8));

    if (!p_Manip->reassmParams.timeOutTblAddr)
        RETURN_ERROR(MAJOR, E_NO_MEMORY,
                     ("MURAM alloc for Reassembly timeout table"));

    MemSet8(UINT_TO_PTR(p_Manip->reassmParams.timeOutTblAddr), 0,
               (uint16_t)(size * 8));


    tmpReg32 = (uint32_t)(XX_VirtToPhys(
            UINT_TO_PTR(p_Manip->reassmParams.timeOutTblAddr))
            - p_FmPcd->physicalMuramBase);
    WRITE_UINT32(p_Manip->reassmParams.p_ReassCommonTbl->timeOutTblPtr,
                 tmpReg32);


    tmpReg32 = 0;
    tmpReg32 |= (((uint32_t)(1 << bitFor1Micro))
            * p_Manip->reassmParams.timeoutThresholdForReassmProcess);
    WRITE_UINT32(p_Manip->reassmParams.p_ReassCommonTbl->expirationDelay,
                 tmpReg32);

    err = FmPcdRegisterReassmPort(p_FmPcd,
                                  p_Manip->reassmParams.p_ReassCommonTbl);
    if (err != E_OK)
    {
        FM_MURAM_FreeMem(p_FmPcd->h_FmMuram,
                         p_Manip->reassmParams.p_ReassCommonTbl);
        RETURN_ERROR(MAJOR, err, ("port registration"));
    }

    return err;
}
