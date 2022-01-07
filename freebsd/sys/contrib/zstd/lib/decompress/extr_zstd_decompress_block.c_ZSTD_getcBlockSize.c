
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ blockType_e ;
struct TYPE_3__ {int lastBlock; scalar_t__ blockType; int origSize; } ;
typedef TYPE_1__ blockProperties_t ;
typedef int U32 ;


 int MEM_readLE24 (void const*) ;
 int RETURN_ERROR_IF (int,int ) ;
 size_t ZSTD_blockHeaderSize ;
 scalar_t__ bt_reserved ;
 scalar_t__ bt_rle ;
 int corruption_detected ;
 int srcSize_wrong ;

size_t ZSTD_getcBlockSize(const void* src, size_t srcSize,
                          blockProperties_t* bpPtr)
{
    RETURN_ERROR_IF(srcSize < ZSTD_blockHeaderSize, srcSize_wrong);

    { U32 const cBlockHeader = MEM_readLE24(src);
        U32 const cSize = cBlockHeader >> 3;
        bpPtr->lastBlock = cBlockHeader & 1;
        bpPtr->blockType = (blockType_e)((cBlockHeader >> 1) & 3);
        bpPtr->origSize = cSize;
        if (bpPtr->blockType == bt_rle) return 1;
        RETURN_ERROR_IF(bpPtr->blockType == bt_reserved, corruption_detected);
        return cSize;
    }
}
