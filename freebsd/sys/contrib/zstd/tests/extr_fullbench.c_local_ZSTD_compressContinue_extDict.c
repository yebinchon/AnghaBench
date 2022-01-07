
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int member_0; int member_2; int member_1; } ;
struct TYPE_4__ {int cParams; TYPE_2__ fParams; } ;
typedef TYPE_1__ ZSTD_parameters ;
typedef TYPE_2__ ZSTD_frameParameters ;
typedef int ZSTD_compressionParameters ;
typedef int BYTE ;


 int DISPLAY (char*,int ) ;
 int FIRST_BLOCK_SIZE ;
 int ZSTD_compressBegin_advanced (int ,int *,int ,TYPE_1__,size_t) ;
 size_t ZSTD_compressContinue (int ,void*,size_t,int *,int) ;
 size_t ZSTD_compressEnd (int ,void*,size_t,int const*,int) ;
 int ZSTD_getErrorName (size_t const) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 int g_zcc ;
 int memcpy (int *,void const*,int) ;

__attribute__((used)) static size_t
local_ZSTD_compressContinue_extDict(const void* src, size_t srcSize,
                                    void* dst, size_t dstCapacity,
                                    void* payload)
{
    BYTE firstBlockBuf[FIRST_BLOCK_SIZE];

    ZSTD_parameters p;
    ZSTD_frameParameters const f = { 1, 0, 0 };
    p.fParams = f;
    p.cParams = *(ZSTD_compressionParameters*)payload;
    ZSTD_compressBegin_advanced(g_zcc, ((void*)0), 0, p, srcSize);
    memcpy(firstBlockBuf, src, FIRST_BLOCK_SIZE);

    { size_t const compressResult = ZSTD_compressContinue(g_zcc,
                                            dst, dstCapacity,
                                            firstBlockBuf, FIRST_BLOCK_SIZE);
        if (ZSTD_isError(compressResult)) {
            DISPLAY("local_ZSTD_compressContinue_extDict error : %s\n",
                    ZSTD_getErrorName(compressResult));
            return compressResult;
        }
        dst = (BYTE*)dst + compressResult;
        dstCapacity -= compressResult;
    }
    return ZSTD_compressEnd(g_zcc, dst, dstCapacity,
                            (const BYTE*)src + FIRST_BLOCK_SIZE,
                            srcSize - FIRST_BLOCK_SIZE);
}
