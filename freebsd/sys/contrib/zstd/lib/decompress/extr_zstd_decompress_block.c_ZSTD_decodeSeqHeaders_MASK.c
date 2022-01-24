#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolEncodingType_e ;
struct TYPE_4__ {int /*<<< orphan*/  MLTable; int /*<<< orphan*/  OFTable; int /*<<< orphan*/  LLTable; } ;
struct TYPE_5__ {int /*<<< orphan*/  ddictIsCold; int /*<<< orphan*/  fseEntropy; int /*<<< orphan*/  MLTptr; TYPE_1__ entropy; int /*<<< orphan*/  OFTptr; int /*<<< orphan*/  LLTptr; } ;
typedef  TYPE_2__ ZSTD_DCtx ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  LLFSELog ; 
 int /*<<< orphan*/  LL_base ; 
 int /*<<< orphan*/  LL_bits ; 
 int /*<<< orphan*/  LL_defaultDTable ; 
 int LONGNBSEQ ; 
 int FUNC1 (int const*) ; 
 size_t MIN_SEQUENCES_SIZE ; 
 int /*<<< orphan*/  MLFSELog ; 
 int /*<<< orphan*/  ML_base ; 
 int /*<<< orphan*/  ML_bits ; 
 int /*<<< orphan*/  ML_defaultDTable ; 
 int /*<<< orphan*/  MaxLL ; 
 int /*<<< orphan*/  MaxML ; 
 int /*<<< orphan*/  MaxOff ; 
 int /*<<< orphan*/  OF_base ; 
 int /*<<< orphan*/  OF_bits ; 
 int /*<<< orphan*/  OF_defaultDTable ; 
 int /*<<< orphan*/  OffFSELog ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (size_t const) ; 
 int /*<<< orphan*/  corruption_detected ; 
 int /*<<< orphan*/  srcSize_wrong ; 

size_t FUNC5(ZSTD_DCtx* dctx, int* nbSeqPtr,
                             const void* src, size_t srcSize)
{
    const BYTE* const istart = (const BYTE* const)src;
    const BYTE* const iend = istart + srcSize;
    const BYTE* ip = istart;
    int nbSeq;
    FUNC0(5, "ZSTD_decodeSeqHeaders");

    /* check */
    FUNC2(srcSize < MIN_SEQUENCES_SIZE, srcSize_wrong);

    /* SeqHead */
    nbSeq = *ip++;
    if (!nbSeq) {
        *nbSeqPtr=0;
        FUNC2(srcSize != 1, srcSize_wrong);
        return 1;
    }
    if (nbSeq > 0x7F) {
        if (nbSeq == 0xFF) {
            FUNC2(ip+2 > iend, srcSize_wrong);
            nbSeq = FUNC1(ip) + LONGNBSEQ, ip+=2;
        } else {
            FUNC2(ip >= iend, srcSize_wrong);
            nbSeq = ((nbSeq-0x80)<<8) + *ip++;
        }
    }
    *nbSeqPtr = nbSeq;

    /* FSE table descriptors */
    FUNC2(ip+1 > iend, srcSize_wrong); /* minimum possible size: 1 byte for symbol encoding types */
    {   symbolEncodingType_e const LLtype = (symbolEncodingType_e)(*ip >> 6);
        symbolEncodingType_e const OFtype = (symbolEncodingType_e)((*ip >> 4) & 3);
        symbolEncodingType_e const MLtype = (symbolEncodingType_e)((*ip >> 2) & 3);
        ip++;

        /* Build DTables */
        {   size_t const llhSize = FUNC3(dctx->entropy.LLTable, &dctx->LLTptr,
                                                      LLtype, MaxLL, LLFSELog,
                                                      ip, iend-ip,
                                                      LL_base, LL_bits,
                                                      LL_defaultDTable, dctx->fseEntropy,
                                                      dctx->ddictIsCold, nbSeq);
            FUNC2(FUNC4(llhSize), corruption_detected);
            ip += llhSize;
        }

        {   size_t const ofhSize = FUNC3(dctx->entropy.OFTable, &dctx->OFTptr,
                                                      OFtype, MaxOff, OffFSELog,
                                                      ip, iend-ip,
                                                      OF_base, OF_bits,
                                                      OF_defaultDTable, dctx->fseEntropy,
                                                      dctx->ddictIsCold, nbSeq);
            FUNC2(FUNC4(ofhSize), corruption_detected);
            ip += ofhSize;
        }

        {   size_t const mlhSize = FUNC3(dctx->entropy.MLTable, &dctx->MLTptr,
                                                      MLtype, MaxML, MLFSELog,
                                                      ip, iend-ip,
                                                      ML_base, ML_bits,
                                                      ML_defaultDTable, dctx->fseEntropy,
                                                      dctx->ddictIsCold, nbSeq);
            FUNC2(FUNC4(mlhSize), corruption_detected);
            ip += mlhSize;
        }
    }

    return ip-istart;
}