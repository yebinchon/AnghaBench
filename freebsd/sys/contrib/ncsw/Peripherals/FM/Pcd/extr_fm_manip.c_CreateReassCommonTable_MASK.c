#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_14__ {int /*<<< orphan*/  expirationDelay; int /*<<< orphan*/  timeOutTblPtr; int /*<<< orphan*/  reassFrmDescPoolPtrLow; int /*<<< orphan*/  liodnAndReassFrmDescPoolPtrHi; int /*<<< orphan*/  reassFrmDescIndexPoolTblPtr; int /*<<< orphan*/  timeoutModeAndFqid; } ;
typedef  TYPE_2__ t_ReassCommonTbl ;
struct TYPE_13__ {scalar_t__ timeOutMode; int fqidForTimeOutFrames; int maxNumFramesInProcess; int dataLiodnOffset; int timeoutThresholdForReassmProcess; TYPE_2__* p_ReassCommonTbl; void* timeOutTblAddr; void* reassFrmDescrPoolTblAddr; int /*<<< orphan*/  dataMemId; void* reassFrmDescrIndxPoolTblAddr; } ;
struct TYPE_15__ {TYPE_1__ reassmParams; scalar_t__ h_FmPcd; } ;
typedef  TYPE_3__ t_FmPcdManip ;
struct TYPE_16__ {int /*<<< orphan*/  h_FmMuram; scalar_t__ physicalMuramBase; int /*<<< orphan*/  h_Fm; } ;
typedef  TYPE_4__ t_FmPcd ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 scalar_t__ E_NOT_AVAILABLE ; 
 scalar_t__ E_NO_MEMORY ; 
 scalar_t__ E_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FM_PCD_MANIP_REASM_COMMON_PARAM_TABLE_ALIGN ; 
 int FM_PCD_MANIP_REASM_COMMON_PARAM_TABLE_SIZE ; 
 int FM_PCD_MANIP_REASM_ELIODN_MASK ; 
 scalar_t__ FM_PCD_MANIP_REASM_ELIODN_SHIFT ; 
 int FM_PCD_MANIP_REASM_LIODN_MASK ; 
 scalar_t__ FM_PCD_MANIP_REASM_LIODN_SHIFT ; 
 int FM_PCD_MANIP_REASM_TIME_OUT_BETWEEN_FRAMES ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int) ; 
 void* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 TYPE_2__* FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 scalar_t__ e_FM_PCD_MANIP_TIME_OUT_BETWEEN_FRAMES ; 

__attribute__((used)) static t_Error FUNC13(t_FmPcdManip *p_Manip)
{
    uint32_t tmpReg32 = 0, i, bitFor1Micro;
    uint64_t tmpReg64, size;
    t_FmPcd *p_FmPcd = (t_FmPcd *)p_Manip->h_FmPcd;
    t_Error err = E_OK;

    bitFor1Micro = FUNC2(p_FmPcd->h_Fm);
    if (bitFor1Micro == 0)
        FUNC7(MAJOR, E_NOT_AVAILABLE, ("Timestamp scale"));

    /* Allocation of the Reassembly Common Parameters table. This table is located in the
     MURAM. Its size is 64 bytes and its base address should be 8-byte aligned. */
    p_Manip->reassmParams.p_ReassCommonTbl =
            (t_ReassCommonTbl *)FUNC0(
                    p_FmPcd->h_FmMuram,
                    FM_PCD_MANIP_REASM_COMMON_PARAM_TABLE_SIZE,
                    FM_PCD_MANIP_REASM_COMMON_PARAM_TABLE_ALIGN);

    if (!p_Manip->reassmParams.p_ReassCommonTbl)
        FUNC7(MAJOR, E_NO_MEMORY,
                     ("MURAM alloc for Reassembly common parameters table"));

    FUNC4(p_Manip->reassmParams.p_ReassCommonTbl, 0,
               FM_PCD_MANIP_REASM_COMMON_PARAM_TABLE_SIZE);

    /* Setting the TimeOut Mode.*/
    tmpReg32 = 0;
    if (p_Manip->reassmParams.timeOutMode
            == e_FM_PCD_MANIP_TIME_OUT_BETWEEN_FRAMES)
        tmpReg32 |= FM_PCD_MANIP_REASM_TIME_OUT_BETWEEN_FRAMES;

    /* Setting TimeOut FQID - Frames that time out are enqueued to this FQID.
     In order to cause TimeOut frames to be discarded, this queue should be configured accordingly*/
    tmpReg32 |= p_Manip->reassmParams.fqidForTimeOutFrames;
    FUNC10(p_Manip->reassmParams.p_ReassCommonTbl->timeoutModeAndFqid,
                 tmpReg32);

    /* Calculation the size of IP Reassembly Frame Descriptor - number of frames that are allowed to be reassembled simultaneously + 129.*/
    size = p_Manip->reassmParams.maxNumFramesInProcess + 129;

    /*Allocation of IP Reassembly Frame Descriptor Indexes Pool - This pool resides in the MURAM */
    p_Manip->reassmParams.reassFrmDescrIndxPoolTblAddr =
            FUNC6(FUNC0(p_FmPcd->h_FmMuram,
                            (uint32_t)(size * 2),
                            256));
    if (!p_Manip->reassmParams.reassFrmDescrIndxPoolTblAddr)
        FUNC7(
                MAJOR, E_NO_MEMORY,
                ("MURAM alloc for Reassembly frame descriptor indexes pool"));

    FUNC4(FUNC8(p_Manip->reassmParams.reassFrmDescrIndxPoolTblAddr),
               0, (uint32_t)(size * 2));

    /* The entries in IP Reassembly Frame Descriptor Indexes Pool contains indexes starting with 1 up to
     the maximum number of frames that are allowed to be reassembled simultaneously + 128.
     The last entry in this pool must contain the index zero*/
    for (i = 0; i < (size - 1); i++)
        FUNC9(
                *(uint16_t *)FUNC5(FUNC8(p_Manip->reassmParams.reassFrmDescrIndxPoolTblAddr), (i<<1)),
                (uint16_t)(i+1));

    /* Sets the IP Reassembly Frame Descriptor Indexes Pool offset from MURAM */
    tmpReg32 = (uint32_t)(FUNC12(
            FUNC8(p_Manip->reassmParams.reassFrmDescrIndxPoolTblAddr))
            - p_FmPcd->physicalMuramBase);
    FUNC10(
            p_Manip->reassmParams.p_ReassCommonTbl->reassFrmDescIndexPoolTblPtr,
            tmpReg32);

    /* Allocation of the Reassembly Frame Descriptors Pool - This pool resides in external memory.
     The number of entries in this pool should be equal to the number of entries in IP Reassembly Frame Descriptor Indexes Pool.*/
    p_Manip->reassmParams.reassFrmDescrPoolTblAddr =
            FUNC6(FUNC11((uint32_t)(size * 64), p_Manip->reassmParams.dataMemId, 64));

    if (!p_Manip->reassmParams.reassFrmDescrPoolTblAddr)
        FUNC7(MAJOR, E_NO_MEMORY, ("Memory allocation FAILED"));

    FUNC4(FUNC8(p_Manip->reassmParams.reassFrmDescrPoolTblAddr), 0,
               (uint32_t)(size * 64));

    /* Sets the Reassembly Frame Descriptors Pool and liodn offset*/
    tmpReg64 = (uint64_t)(FUNC12(
            FUNC8(p_Manip->reassmParams.reassFrmDescrPoolTblAddr)));
    tmpReg64 |= ((uint64_t)(p_Manip->reassmParams.dataLiodnOffset
            & FM_PCD_MANIP_REASM_LIODN_MASK)
            << (uint64_t)FM_PCD_MANIP_REASM_LIODN_SHIFT);
    tmpReg64 |= ((uint64_t)(p_Manip->reassmParams.dataLiodnOffset
            & FM_PCD_MANIP_REASM_ELIODN_MASK)
            << (uint64_t)FM_PCD_MANIP_REASM_ELIODN_SHIFT);
    FUNC10(
            p_Manip->reassmParams.p_ReassCommonTbl->liodnAndReassFrmDescPoolPtrHi,
            (uint32_t)(tmpReg64 >> 32));
    FUNC10(
            p_Manip->reassmParams.p_ReassCommonTbl->reassFrmDescPoolPtrLow,
            (uint32_t)tmpReg64);

    /*Allocation of the TimeOut table - This table resides in the MURAM.
     The number of entries in this table is identical to the number of entries in the Reassembly Frame Descriptors Pool*/
    p_Manip->reassmParams.timeOutTblAddr =
            FUNC6(FUNC0(p_FmPcd->h_FmMuram, (uint32_t)(size * 8),8));

    if (!p_Manip->reassmParams.timeOutTblAddr)
        FUNC7(MAJOR, E_NO_MEMORY,
                     ("MURAM alloc for Reassembly timeout table"));

    FUNC4(FUNC8(p_Manip->reassmParams.timeOutTblAddr), 0,
               (uint16_t)(size * 8));

    /* Sets the TimeOut table offset from MURAM */
    tmpReg32 = (uint32_t)(FUNC12(
            FUNC8(p_Manip->reassmParams.timeOutTblAddr))
            - p_FmPcd->physicalMuramBase);
    FUNC10(p_Manip->reassmParams.p_ReassCommonTbl->timeOutTblPtr,
                 tmpReg32);

    /* Sets the Expiration Delay */
    tmpReg32 = 0;
    tmpReg32 |= (((uint32_t)(1 << bitFor1Micro))
            * p_Manip->reassmParams.timeoutThresholdForReassmProcess);
    FUNC10(p_Manip->reassmParams.p_ReassCommonTbl->expirationDelay,
                 tmpReg32);

    err = FUNC3(p_FmPcd,
                                  p_Manip->reassmParams.p_ReassCommonTbl);
    if (err != E_OK)
    {
        FUNC1(p_FmPcd->h_FmMuram,
                         p_Manip->reassmParams.p_ReassCommonTbl);
        FUNC7(MAJOR, err, ("port registration"));
    }

    return err;
}