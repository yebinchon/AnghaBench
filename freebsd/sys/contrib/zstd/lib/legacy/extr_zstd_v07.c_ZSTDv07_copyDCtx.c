
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv07_DCtx ;


 scalar_t__ WILDCOPY_OVERLENGTH ;
 scalar_t__ ZSTDv07_BLOCKSIZE_ABSOLUTEMAX ;
 scalar_t__ ZSTDv07_frameHeaderSize_max ;
 int memcpy (int *,int const*,scalar_t__) ;

void ZSTDv07_copyDCtx(ZSTDv07_DCtx* dstDCtx, const ZSTDv07_DCtx* srcDCtx)
{
    memcpy(dstDCtx, srcDCtx,
           sizeof(ZSTDv07_DCtx) - (ZSTDv07_BLOCKSIZE_ABSOLUTEMAX+WILDCOPY_OVERLENGTH + ZSTDv07_frameHeaderSize_max));
}
