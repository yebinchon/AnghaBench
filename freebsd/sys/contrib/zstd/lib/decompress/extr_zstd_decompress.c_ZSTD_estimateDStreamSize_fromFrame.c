
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ const windowSize; } ;
typedef TYPE_1__ ZSTD_frameHeader ;
typedef scalar_t__ U32 ;


 int RETURN_ERROR_IF (int,int ) ;
 unsigned int ZSTD_WINDOWLOG_MAX ;
 size_t ZSTD_estimateDStreamSize (size_t) ;
 size_t ZSTD_getFrameHeader (TYPE_1__*,void const*,size_t) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 int frameParameter_windowTooLarge ;
 int srcSize_wrong ;

size_t ZSTD_estimateDStreamSize_fromFrame(const void* src, size_t srcSize)
{
    U32 const windowSizeMax = 1U << ZSTD_WINDOWLOG_MAX;
    ZSTD_frameHeader zfh;
    size_t const err = ZSTD_getFrameHeader(&zfh, src, srcSize);
    if (ZSTD_isError(err)) return err;
    RETURN_ERROR_IF(err>0, srcSize_wrong);
    RETURN_ERROR_IF(zfh.windowSize > windowSizeMax,
                    frameParameter_windowTooLarge);
    return ZSTD_estimateDStreamSize((size_t)zfh.windowSize);
}
