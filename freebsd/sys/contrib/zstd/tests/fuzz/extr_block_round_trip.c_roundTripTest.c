
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_parameters ;


 int FUZZ_ASSERT (int) ;
 int FUZZ_ZASSERT (size_t) ;
 size_t ZSTD_compressBegin_advanced (int ,int *,int ,int const,size_t) ;
 size_t ZSTD_compressBlock (int ,void*,size_t,void const*,size_t) ;
 int ZSTD_decompressBegin (int ) ;
 size_t ZSTD_decompressBlock (int ,void*,size_t,void*,size_t) ;
 int ZSTD_getParams (int,size_t,int ) ;
 int cctx ;
 int dctx ;
 int memcpy (void*,void const*,size_t) ;

__attribute__((used)) static size_t roundTripTest(void *result, size_t resultCapacity,
                            void *compressed, size_t compressedCapacity,
                            const void *src, size_t srcSize,
                            int cLevel)
{
    ZSTD_parameters const params = ZSTD_getParams(cLevel, srcSize, 0);
    size_t ret = ZSTD_compressBegin_advanced(cctx, ((void*)0), 0, params, srcSize);
    FUZZ_ZASSERT(ret);

    ret = ZSTD_compressBlock(cctx, compressed, compressedCapacity, src, srcSize);
    FUZZ_ZASSERT(ret);
    if (ret == 0) {
        FUZZ_ASSERT(resultCapacity >= srcSize);
        memcpy(result, src, srcSize);
        return srcSize;
    }
    ZSTD_decompressBegin(dctx);
    return ZSTD_decompressBlock(dctx, result, resultCapacity, compressed, ret);
}
