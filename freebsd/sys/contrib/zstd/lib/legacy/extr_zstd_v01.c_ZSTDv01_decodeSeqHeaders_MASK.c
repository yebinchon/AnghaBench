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
typedef  int /*<<< orphan*/  S16 ;
typedef  int /*<<< orphan*/  FSE_DTable ;
typedef  int BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,int*,int*,int const*,int) ; 
 int /*<<< orphan*/  GENERIC ; 
 int LLFSELog ; 
 int LLbits ; 
 int MLFSELog ; 
 int MLbits ; 
 int MaxLL ; 
 int MaxML ; 
 int MaxOff ; 
 int OffFSELog ; 
 int Offbits ; 
 int FUNC6 (int const*) ; 
#define  bt_raw 129 
#define  bt_rle 128 
 int /*<<< orphan*/  corruption_detected ; 
 int /*<<< orphan*/  srcSize_wrong ; 

__attribute__((used)) static size_t FUNC7(int* nbSeq, const BYTE** dumpsPtr, size_t* dumpsLengthPtr,
                         FSE_DTable* DTableLL, FSE_DTable* DTableML, FSE_DTable* DTableOffb,
                         const void* src, size_t srcSize)
{
    const BYTE* const istart = (const BYTE* const)src;
    const BYTE* ip = istart;
    const BYTE* const iend = istart + srcSize;
    U32 LLtype, Offtype, MLtype;
    U32 LLlog, Offlog, MLlog;
    size_t dumpsLength;

    /* check */
    if (srcSize < 5) return FUNC0(srcSize_wrong);

    /* SeqHead */
    *nbSeq = FUNC6(ip); ip+=2;
    LLtype  = *ip >> 6;
    Offtype = (*ip >> 4) & 3;
    MLtype  = (*ip >> 2) & 3;
    if (*ip & 2)
    {
        dumpsLength  = ip[2];
        dumpsLength += ip[1] << 8;
        ip += 3;
    }
    else
    {
        dumpsLength  = ip[1];
        dumpsLength += (ip[0] & 1) << 8;
        ip += 2;
    }
    *dumpsPtr = ip;
    ip += dumpsLength;
    *dumpsLengthPtr = dumpsLength;

    /* check */
    if (ip > iend-3) return FUNC0(srcSize_wrong); /* min : all 3 are "raw", hence no header, but at least xxLog bits per type */

    /* sequences */
    {
        S16 norm[MaxML+1];    /* assumption : MaxML >= MaxLL and MaxOff */
        size_t headerSize;

        /* Build DTables */
        switch(LLtype)
        {
        case bt_rle :
            LLlog = 0;
            FUNC3(DTableLL, *ip++); break;
        case bt_raw :
            LLlog = LLbits;
            FUNC2(DTableLL, LLbits); break;
        default :
            {   U32 max = MaxLL;
                headerSize = FUNC5(norm, &max, &LLlog, ip, iend-ip);
                if (FUNC4(headerSize)) return FUNC0(GENERIC);
                if (LLlog > LLFSELog) return FUNC0(corruption_detected);
                ip += headerSize;
                FUNC1(DTableLL, norm, max, LLlog);
        }   }

        switch(Offtype)
        {
        case bt_rle :
            Offlog = 0;
            if (ip > iend-2) return FUNC0(srcSize_wrong); /* min : "raw", hence no header, but at least xxLog bits */
            FUNC3(DTableOffb, *ip++); break;
        case bt_raw :
            Offlog = Offbits;
            FUNC2(DTableOffb, Offbits); break;
        default :
            {   U32 max = MaxOff;
                headerSize = FUNC5(norm, &max, &Offlog, ip, iend-ip);
                if (FUNC4(headerSize)) return FUNC0(GENERIC);
                if (Offlog > OffFSELog) return FUNC0(corruption_detected);
                ip += headerSize;
                FUNC1(DTableOffb, norm, max, Offlog);
        }   }

        switch(MLtype)
        {
        case bt_rle :
            MLlog = 0;
            if (ip > iend-2) return FUNC0(srcSize_wrong); /* min : "raw", hence no header, but at least xxLog bits */
            FUNC3(DTableML, *ip++); break;
        case bt_raw :
            MLlog = MLbits;
            FUNC2(DTableML, MLbits); break;
        default :
            {   U32 max = MaxML;
                headerSize = FUNC5(norm, &max, &MLlog, ip, iend-ip);
                if (FUNC4(headerSize)) return FUNC0(GENERIC);
                if (MLlog > MLFSELog) return FUNC0(corruption_detected);
                ip += headerSize;
                FUNC1(DTableML, norm, max, MLlog);
    }   }   }

    return ip-istart;
}