
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int symbolEncodingType_e ;
struct TYPE_4__ {int MLTable; int OFTable; int LLTable; } ;
struct TYPE_5__ {int ddictIsCold; int fseEntropy; int MLTptr; TYPE_1__ entropy; int OFTptr; int LLTptr; } ;
typedef TYPE_2__ ZSTD_DCtx ;
typedef int BYTE ;


 int DEBUGLOG (int,char*) ;
 int LLFSELog ;
 int LL_base ;
 int LL_bits ;
 int LL_defaultDTable ;
 int LONGNBSEQ ;
 int MEM_readLE16 (int const*) ;
 size_t MIN_SEQUENCES_SIZE ;
 int MLFSELog ;
 int ML_base ;
 int ML_bits ;
 int ML_defaultDTable ;
 int MaxLL ;
 int MaxML ;
 int MaxOff ;
 int OF_base ;
 int OF_bits ;
 int OF_defaultDTable ;
 int OffFSELog ;
 int RETURN_ERROR_IF (int,int ) ;
 size_t ZSTD_buildSeqTable (int ,int *,int const,int ,int ,int const*,int,int ,int ,int ,int ,int ,int) ;
 int ZSTD_isError (size_t const) ;
 int corruption_detected ;
 int srcSize_wrong ;

size_t ZSTD_decodeSeqHeaders(ZSTD_DCtx* dctx, int* nbSeqPtr,
                             const void* src, size_t srcSize)
{
    const BYTE* const istart = (const BYTE* const)src;
    const BYTE* const iend = istart + srcSize;
    const BYTE* ip = istart;
    int nbSeq;
    DEBUGLOG(5, "ZSTD_decodeSeqHeaders");


    RETURN_ERROR_IF(srcSize < MIN_SEQUENCES_SIZE, srcSize_wrong);


    nbSeq = *ip++;
    if (!nbSeq) {
        *nbSeqPtr=0;
        RETURN_ERROR_IF(srcSize != 1, srcSize_wrong);
        return 1;
    }
    if (nbSeq > 0x7F) {
        if (nbSeq == 0xFF) {
            RETURN_ERROR_IF(ip+2 > iend, srcSize_wrong);
            nbSeq = MEM_readLE16(ip) + LONGNBSEQ, ip+=2;
        } else {
            RETURN_ERROR_IF(ip >= iend, srcSize_wrong);
            nbSeq = ((nbSeq-0x80)<<8) + *ip++;
        }
    }
    *nbSeqPtr = nbSeq;


    RETURN_ERROR_IF(ip+1 > iend, srcSize_wrong);
    { symbolEncodingType_e const LLtype = (symbolEncodingType_e)(*ip >> 6);
        symbolEncodingType_e const OFtype = (symbolEncodingType_e)((*ip >> 4) & 3);
        symbolEncodingType_e const MLtype = (symbolEncodingType_e)((*ip >> 2) & 3);
        ip++;


        { size_t const llhSize = ZSTD_buildSeqTable(dctx->entropy.LLTable, &dctx->LLTptr,
                                                      LLtype, MaxLL, LLFSELog,
                                                      ip, iend-ip,
                                                      LL_base, LL_bits,
                                                      LL_defaultDTable, dctx->fseEntropy,
                                                      dctx->ddictIsCold, nbSeq);
            RETURN_ERROR_IF(ZSTD_isError(llhSize), corruption_detected);
            ip += llhSize;
        }

        { size_t const ofhSize = ZSTD_buildSeqTable(dctx->entropy.OFTable, &dctx->OFTptr,
                                                      OFtype, MaxOff, OffFSELog,
                                                      ip, iend-ip,
                                                      OF_base, OF_bits,
                                                      OF_defaultDTable, dctx->fseEntropy,
                                                      dctx->ddictIsCold, nbSeq);
            RETURN_ERROR_IF(ZSTD_isError(ofhSize), corruption_detected);
            ip += ofhSize;
        }

        { size_t const mlhSize = ZSTD_buildSeqTable(dctx->entropy.MLTable, &dctx->MLTptr,
                                                      MLtype, MaxML, MLFSELog,
                                                      ip, iend-ip,
                                                      ML_base, ML_bits,
                                                      ML_defaultDTable, dctx->fseEntropy,
                                                      dctx->ddictIsCold, nbSeq);
            RETURN_ERROR_IF(ZSTD_isError(mlhSize), corruption_detected);
            ip += mlhSize;
        }
    }

    return ip-istart;
}
