#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int U32 ;
typedef  int /*<<< orphan*/  FSEv07_DTable ;
typedef  int BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LLFSELog ; 
 int /*<<< orphan*/  LL_defaultNorm ; 
 int /*<<< orphan*/  LL_defaultNormLog ; 
 int LONGNBSEQ ; 
 int FUNC1 (int const*) ; 
 size_t MIN_SEQUENCES_SIZE ; 
 int /*<<< orphan*/  MLFSELog ; 
 int /*<<< orphan*/  ML_defaultNorm ; 
 int /*<<< orphan*/  ML_defaultNormLog ; 
 int /*<<< orphan*/  MaxLL ; 
 int /*<<< orphan*/  MaxML ; 
 int /*<<< orphan*/  MaxOff ; 
 int /*<<< orphan*/  OF_defaultNorm ; 
 int /*<<< orphan*/  OF_defaultNormLog ; 
 int /*<<< orphan*/  OffFSELog ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (size_t const) ; 
 int /*<<< orphan*/  corruption_detected ; 
 int /*<<< orphan*/  srcSize_wrong ; 

__attribute__((used)) static size_t FUNC4(int* nbSeqPtr,
                             FSEv07_DTable* DTableLL, FSEv07_DTable* DTableML, FSEv07_DTable* DTableOffb, U32 flagRepeatTable,
                             const void* src, size_t srcSize)
{
    const BYTE* const istart = (const BYTE* const)src;
    const BYTE* const iend = istart + srcSize;
    const BYTE* ip = istart;

    /* check */
    if (srcSize < MIN_SEQUENCES_SIZE) return FUNC0(srcSize_wrong);

    /* SeqHead */
    {   int nbSeq = *ip++;
        if (!nbSeq) { *nbSeqPtr=0; return 1; }
        if (nbSeq > 0x7F) {
            if (nbSeq == 0xFF) {
                if (ip+2 > iend) return FUNC0(srcSize_wrong);
                nbSeq = FUNC1(ip) + LONGNBSEQ, ip+=2;
            } else {
                if (ip >= iend) return FUNC0(srcSize_wrong);
                nbSeq = ((nbSeq-0x80)<<8) + *ip++;
            }
        }
        *nbSeqPtr = nbSeq;
    }

    /* FSE table descriptors */
    if (ip + 4 > iend) return FUNC0(srcSize_wrong); /* min : header byte + all 3 are "raw", hence no header, but at least xxLog bits per type */
    {   U32 const LLtype  = *ip >> 6;
        U32 const OFtype = (*ip >> 4) & 3;
        U32 const MLtype  = (*ip >> 2) & 3;
        ip++;

        /* Build DTables */
        {   size_t const llhSize = FUNC2(DTableLL, LLtype, MaxLL, LLFSELog, ip, iend-ip, LL_defaultNorm, LL_defaultNormLog, flagRepeatTable);
            if (FUNC3(llhSize)) return FUNC0(corruption_detected);
            ip += llhSize;
        }
        {   size_t const ofhSize = FUNC2(DTableOffb, OFtype, MaxOff, OffFSELog, ip, iend-ip, OF_defaultNorm, OF_defaultNormLog, flagRepeatTable);
            if (FUNC3(ofhSize)) return FUNC0(corruption_detected);
            ip += ofhSize;
        }
        {   size_t const mlhSize = FUNC2(DTableML, MLtype, MaxML, MLFSELog, ip, iend-ip, ML_defaultNorm, ML_defaultNormLog, flagRepeatTable);
            if (FUNC3(mlhSize)) return FUNC0(corruption_detected);
            ip += mlhSize;
    }   }

    return ip-istart;
}