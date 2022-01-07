
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; int blockType; int member_1; } ;
typedef TYPE_1__ blockProperties_t ;
typedef int ZSTDv06_DCtx ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 int GENERIC ;
 size_t ZSTDv06_blockHeaderSize ;
 size_t ZSTDv06_copyRawBlock (int *,int,int const*,size_t const) ;
 scalar_t__ ZSTDv06_decodeFrameHeader (int *,void const*,size_t const) ;
 size_t ZSTDv06_decompressBlock_internal (int *,int *,int,int const*,size_t const) ;
 size_t ZSTDv06_frameHeaderSize (void const*,size_t) ;
 size_t ZSTDv06_frameHeaderSize_min ;
 size_t ZSTDv06_getcBlockSize (int const*,int,TYPE_1__*) ;
 scalar_t__ ZSTDv06_isError (size_t const) ;




 int corruption_detected ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTDv06_decompressFrame(ZSTDv06_DCtx* dctx,
                                 void* dst, size_t dstCapacity,
                                 const void* src, size_t srcSize)
{
    const BYTE* ip = (const BYTE*)src;
    const BYTE* const iend = ip + srcSize;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* op = ostart;
    BYTE* const oend = ostart + dstCapacity;
    size_t remainingSize = srcSize;
    blockProperties_t blockProperties = { 131, 0 };


    if (srcSize < ZSTDv06_frameHeaderSize_min+ZSTDv06_blockHeaderSize) return ERROR(srcSize_wrong);


    { size_t const frameHeaderSize = ZSTDv06_frameHeaderSize(src, ZSTDv06_frameHeaderSize_min);
        if (ZSTDv06_isError(frameHeaderSize)) return frameHeaderSize;
        if (srcSize < frameHeaderSize+ZSTDv06_blockHeaderSize) return ERROR(srcSize_wrong);
        if (ZSTDv06_decodeFrameHeader(dctx, src, frameHeaderSize)) return ERROR(corruption_detected);
        ip += frameHeaderSize; remainingSize -= frameHeaderSize;
    }


    while (1) {
        size_t decodedSize=0;
        size_t const cBlockSize = ZSTDv06_getcBlockSize(ip, iend-ip, &blockProperties);
        if (ZSTDv06_isError(cBlockSize)) return cBlockSize;

        ip += ZSTDv06_blockHeaderSize;
        remainingSize -= ZSTDv06_blockHeaderSize;
        if (cBlockSize > remainingSize) return ERROR(srcSize_wrong);

        switch(blockProperties.blockType)
        {
        case 131:
            decodedSize = ZSTDv06_decompressBlock_internal(dctx, op, oend-op, ip, cBlockSize);
            break;
        case 129 :
            decodedSize = ZSTDv06_copyRawBlock(op, oend-op, ip, cBlockSize);
            break;
        case 128 :
            return ERROR(GENERIC);
            break;
        case 130 :

            if (remainingSize) return ERROR(srcSize_wrong);
            break;
        default:
            return ERROR(GENERIC);
        }
        if (cBlockSize == 0) break;

        if (ZSTDv06_isError(decodedSize)) return decodedSize;
        op += decodedSize;
        ip += cBlockSize;
        remainingSize -= cBlockSize;
    }

    return op-ostart;
}
