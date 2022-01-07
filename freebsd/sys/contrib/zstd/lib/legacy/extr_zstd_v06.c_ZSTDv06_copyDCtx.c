
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv06_DCtx ;


 scalar_t__ WILDCOPY_OVERLENGTH ;
 scalar_t__ ZSTDv06_BLOCKSIZE_MAX ;
 scalar_t__ ZSTDv06_frameHeaderSize_max ;
 int memcpy (int *,int const*,scalar_t__) ;

void ZSTDv06_copyDCtx(ZSTDv06_DCtx* dstDCtx, const ZSTDv06_DCtx* srcDCtx)
{
    memcpy(dstDCtx, srcDCtx,
           sizeof(ZSTDv06_DCtx) - (ZSTDv06_BLOCKSIZE_MAX+WILDCOPY_OVERLENGTH + ZSTDv06_frameHeaderSize_max));
}
