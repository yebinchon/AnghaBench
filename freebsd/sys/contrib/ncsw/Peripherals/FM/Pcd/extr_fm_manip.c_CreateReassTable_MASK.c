#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_13__ {int /*<<< orphan*/  maxReassemblySize; int /*<<< orphan*/  minFragSize; int /*<<< orphan*/  autoLearnSetLockTblPtrLow; int /*<<< orphan*/  liodnSlAndAutoLearnSetLockTblPtrHi; int /*<<< orphan*/  autoLearnHashTblPtrLow; int /*<<< orphan*/  liodnAlAndAutoLearnHashTblPtrHi; int /*<<< orphan*/  autoLearnHashKeyMask; int /*<<< orphan*/  waysNumAndSetSize; int /*<<< orphan*/  reassCommonPrmTblPtr; } ;
typedef  TYPE_4__ t_ReassTbl ;
struct TYPE_11__ {uintptr_t autoLearnHashTblAddr; uintptr_t autoLearnSetLockTblAddr; int numOfFramesPerHashEntry; scalar_t__ maxRessembledsSize; TYPE_4__* p_ReassTbl; } ;
struct TYPE_10__ {uintptr_t ipv4AutoLearnHashTblAddr; uintptr_t ipv4AutoLearnSetLockTblAddr; int* numOfFramesPerHashEntry; uintptr_t ipv6AutoLearnHashTblAddr; uintptr_t ipv6AutoLearnSetLockTblAddr; scalar_t__* minFragSize; TYPE_4__* p_Ipv6ReassTbl; TYPE_4__* p_Ipv4ReassTbl; } ;
struct TYPE_12__ {int maxNumFramesInProcess; int dataLiodnOffset; int /*<<< orphan*/  dataMemId; int /*<<< orphan*/  p_ReassCommonTbl; TYPE_2__ capwap; TYPE_1__ ip; } ;
struct TYPE_14__ {TYPE_3__ reassmParams; TYPE_6__* h_FmPcd; } ;
typedef  TYPE_5__ t_FmPcdManip ;
struct TYPE_15__ {int /*<<< orphan*/  h_FmMuram; scalar_t__ physicalMuramBase; } ;
typedef  TYPE_6__ t_FmPcd ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int e_NetHeaderType ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_VALUE ; 
 int /*<<< orphan*/  E_NOT_SUPPORTED ; 
 int /*<<< orphan*/  E_NO_MEMORY ; 
 int /*<<< orphan*/  E_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FM_PCD_MANIP_REASM_ELIODN_MASK ; 
 scalar_t__ FM_PCD_MANIP_REASM_ELIODN_SHIFT ; 
 int FM_PCD_MANIP_REASM_LIODN_MASK ; 
 scalar_t__ FM_PCD_MANIP_REASM_LIODN_SHIFT ; 
 int /*<<< orphan*/  FM_PCD_MANIP_REASM_TABLE_ALIGN ; 
 int /*<<< orphan*/  FM_PCD_MANIP_REASM_TABLE_SIZE ; 
#define  HEADER_TYPE_CAPWAP 130 
#define  HEADER_TYPE_IPv4 129 
#define  HEADER_TYPE_IPv6 128 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 uintptr_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int e_FM_PCD_MANIP_SIX_WAYS_HASH ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static t_Error FUNC15(t_FmPcdManip *p_Manip, e_NetHeaderType hdr)
{
    t_FmPcd *p_FmPcd = p_Manip->h_FmPcd;
    uint32_t tmpReg32, autoLearnHashTblSize;
    uint32_t numOfWays, setSize, setSizeCode, keySize;
    uint32_t waySize, numOfSets, numOfEntries;
    uint64_t tmpReg64;
    uint16_t minFragSize;
    uint16_t maxReassemSize;
    uintptr_t *p_AutoLearnHashTblAddr, *p_AutoLearnSetLockTblAddr;
    t_ReassTbl **p_ReassTbl;

    switch (hdr)
    {
        case HEADER_TYPE_IPv4:
            p_ReassTbl = &p_Manip->reassmParams.ip.p_Ipv4ReassTbl;
            p_AutoLearnHashTblAddr =
                    &p_Manip->reassmParams.ip.ipv4AutoLearnHashTblAddr;
            p_AutoLearnSetLockTblAddr =
                    &p_Manip->reassmParams.ip.ipv4AutoLearnSetLockTblAddr;
            minFragSize = p_Manip->reassmParams.ip.minFragSize[0];
            maxReassemSize = 0;
            numOfWays = p_Manip->reassmParams.ip.numOfFramesPerHashEntry[0];
            keySize = 4 + 4 + 1 + 2; /* 3-tuple + IP-Id */
            break;
        case HEADER_TYPE_IPv6:
            p_ReassTbl = &p_Manip->reassmParams.ip.p_Ipv6ReassTbl;
            p_AutoLearnHashTblAddr =
                    &p_Manip->reassmParams.ip.ipv6AutoLearnHashTblAddr;
            p_AutoLearnSetLockTblAddr =
                    &p_Manip->reassmParams.ip.ipv6AutoLearnSetLockTblAddr;
            minFragSize = p_Manip->reassmParams.ip.minFragSize[1];
            maxReassemSize = 0;
            numOfWays = p_Manip->reassmParams.ip.numOfFramesPerHashEntry[1];
            keySize = 16 + 16 + 4; /* 2-tuple + IP-Id */
            if (numOfWays > e_FM_PCD_MANIP_SIX_WAYS_HASH)
                FUNC6(MAJOR, E_INVALID_VALUE, ("num of ways"));
            break;
        case HEADER_TYPE_CAPWAP:
            p_ReassTbl = &p_Manip->reassmParams.capwap.p_ReassTbl;
            p_AutoLearnHashTblAddr =
                    &p_Manip->reassmParams.capwap.autoLearnHashTblAddr;
            p_AutoLearnSetLockTblAddr =
                    &p_Manip->reassmParams.capwap.autoLearnSetLockTblAddr;
            minFragSize = 0;
            maxReassemSize = p_Manip->reassmParams.capwap.maxRessembledsSize;
            numOfWays = p_Manip->reassmParams.capwap.numOfFramesPerHashEntry;
            keySize = 4;
            break;
        default:
            FUNC6(MAJOR, E_NOT_SUPPORTED, ("header type"));
    }
    keySize += 2; /* 2 bytes reserved for RFDIndex */
#if (DPAA_VERSION >= 11)
    keySize += 2; /* 2 bytes reserved */
#endif /* (DPAA_VERSION >= 11) */
    waySize = FUNC7(keySize, 8);

    /* Allocates the Reassembly Parameters Table - This table is located in the MURAM.*/
    *p_ReassTbl = (t_ReassTbl *)FUNC0(
            p_FmPcd->h_FmMuram, FM_PCD_MANIP_REASM_TABLE_SIZE,
            FM_PCD_MANIP_REASM_TABLE_ALIGN);
    if (!*p_ReassTbl)
        FUNC6( MAJOR, E_NO_MEMORY,
                     ("MURAM alloc for Reassembly specific parameters table"));
    FUNC14(*p_ReassTbl, 0, sizeof(t_ReassTbl));

    /* Sets the Reassembly common Parameters table offset from MURAM in the Reassembly Table descriptor*/
    tmpReg32 = (uint32_t)(FUNC13(p_Manip->reassmParams.p_ReassCommonTbl)
            - p_FmPcd->physicalMuramBase);
    FUNC10((*p_ReassTbl)->reassCommonPrmTblPtr, tmpReg32);

    /* Calculate set size (set size is rounded-up to next power of 2) */
    FUNC4(numOfWays * waySize, setSize);

    /* Get set size code */
    FUNC2(setSize, setSizeCode);

    /* Sets ways number and set size code */
    FUNC9((*p_ReassTbl)->waysNumAndSetSize,
                 (uint16_t)((numOfWays << 8) | setSizeCode));

    /* It is recommended that the total number of entries in this table
     (number of sets * number of ways) will be twice the number of frames that
     are expected to be reassembled simultaneously.*/
    numOfEntries = (uint32_t)(p_Manip->reassmParams.maxNumFramesInProcess * 2);

    /* sets number calculation - number of entries = number of sets * number of ways */
    numOfSets = numOfEntries / numOfWays;

    /* Sets AutoLearnHashKeyMask*/
    FUNC4(numOfSets, numOfSets);

    FUNC9((*p_ReassTbl)->autoLearnHashKeyMask,
                 (uint16_t)(numOfSets - 1));

    /* Allocation of Reassembly Automatic Learning Hash Table - This table resides in external memory.
     The size of this table is determined by the number of sets and the set size.
     Table size = set size * number of sets
     This table base address should be aligned to SetSize.*/
    autoLearnHashTblSize = numOfSets * setSize;

    *p_AutoLearnHashTblAddr =
            FUNC5(FUNC12(autoLearnHashTblSize, p_Manip->reassmParams.dataMemId, setSize));
    if (!*p_AutoLearnHashTblAddr)
    {
        FUNC1(p_FmPcd->h_FmMuram, *p_ReassTbl);
        *p_ReassTbl = NULL;
        FUNC6(MAJOR, E_NO_MEMORY, ("Memory allocation FAILED"));
    }
    FUNC3(FUNC8(*p_AutoLearnHashTblAddr), 0, autoLearnHashTblSize);

    /* Sets the Reassembly Automatic Learning Hash Table and liodn offset */
    tmpReg64 = ((uint64_t)(p_Manip->reassmParams.dataLiodnOffset
            & FM_PCD_MANIP_REASM_LIODN_MASK)
            << (uint64_t)FM_PCD_MANIP_REASM_LIODN_SHIFT);
    tmpReg64 |= ((uint64_t)(p_Manip->reassmParams.dataLiodnOffset
            & FM_PCD_MANIP_REASM_ELIODN_MASK)
            << (uint64_t)FM_PCD_MANIP_REASM_ELIODN_SHIFT);
    tmpReg64 |= FUNC13(FUNC8(*p_AutoLearnHashTblAddr));
    FUNC10( (*p_ReassTbl)->liodnAlAndAutoLearnHashTblPtrHi,
                 (uint32_t)(tmpReg64 >> 32));
    FUNC10((*p_ReassTbl)->autoLearnHashTblPtrLow, (uint32_t)tmpReg64);

    /* Allocation of the Set Lock table - This table resides in external memory
     The size of this table is (number of sets in the Reassembly Automatic Learning Hash table)*4 bytes.
     This table resides in external memory and its base address should be 4-byte aligned */
    *p_AutoLearnSetLockTblAddr =
            FUNC5(FUNC12((uint32_t)(numOfSets * 4), p_Manip->reassmParams.dataMemId, 4));
    if (!*p_AutoLearnSetLockTblAddr)
    {
        FUNC1(p_FmPcd->h_FmMuram, *p_ReassTbl);
        *p_ReassTbl = NULL;
        FUNC11(FUNC8(*p_AutoLearnHashTblAddr));
        *p_AutoLearnHashTblAddr = 0;
        FUNC6(MAJOR, E_NO_MEMORY, ("Memory allocation FAILED"));
    }
    FUNC3(FUNC8(*p_AutoLearnSetLockTblAddr), 0, (numOfSets * 4));

    /* sets Set Lock table pointer and liodn offset*/
    tmpReg64 = ((uint64_t)(p_Manip->reassmParams.dataLiodnOffset
            & FM_PCD_MANIP_REASM_LIODN_MASK)
            << (uint64_t)FM_PCD_MANIP_REASM_LIODN_SHIFT);
    tmpReg64 |= ((uint64_t)(p_Manip->reassmParams.dataLiodnOffset
            & FM_PCD_MANIP_REASM_ELIODN_MASK)
            << (uint64_t)FM_PCD_MANIP_REASM_ELIODN_SHIFT);
    tmpReg64 |= FUNC13(FUNC8(*p_AutoLearnSetLockTblAddr));
    FUNC10( (*p_ReassTbl)->liodnSlAndAutoLearnSetLockTblPtrHi,
                 (uint32_t)(tmpReg64 >> 32));
    FUNC10((*p_ReassTbl)->autoLearnSetLockTblPtrLow, (uint32_t)tmpReg64);

    /* Sets user's requested minimum fragment size (in Bytes) for First/Middle fragment */
    FUNC9((*p_ReassTbl)->minFragSize, minFragSize);

    FUNC9((*p_ReassTbl)->maxReassemblySize, maxReassemSize);

    return E_OK;
}