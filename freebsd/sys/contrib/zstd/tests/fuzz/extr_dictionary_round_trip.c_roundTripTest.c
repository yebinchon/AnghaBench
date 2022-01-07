
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_dictLoadMethod_e ;
typedef scalar_t__ ZSTD_dictContentType_e ;
struct TYPE_3__ {int buff; int size; } ;
typedef TYPE_1__ FUZZ_dict_t ;
typedef int FUZZ_dataProducer_t ;


 int FUZZ_ZASSERT (size_t) ;
 int FUZZ_dataProducer_int32Range (int *,int ,int ) ;
 scalar_t__ FUZZ_dataProducer_uint32Range (int *,int ,int) ;
 int FUZZ_setRandomParameters (int ,size_t,int *) ;
 TYPE_1__ FUZZ_train (void const*,size_t,int *) ;
 size_t ZSTD_CCtx_loadDictionary_advanced (int ,int ,int ,int ,scalar_t__) ;
 size_t ZSTD_CCtx_setParameter (int ,int ,int ) ;
 size_t ZSTD_DCtx_loadDictionary_advanced (int ,int ,int ,int ,scalar_t__) ;
 int ZSTD_c_checksumFlag ;
 size_t ZSTD_compress2 (int ,void*,size_t,void const*,size_t) ;
 size_t ZSTD_compress_usingDict (int ,void*,size_t,void const*,size_t,int ,int ,int const) ;
 scalar_t__ ZSTD_dct_auto ;
 size_t ZSTD_decompressDCtx (int ,void*,size_t,void*,size_t) ;
 int cctx ;
 int dctx ;
 int free (int ) ;
 int kMaxClevel ;
 int kMinClevel ;

__attribute__((used)) static size_t roundTripTest(void *result, size_t resultCapacity,
                            void *compressed, size_t compressedCapacity,
                            const void *src, size_t srcSize,
                            FUZZ_dataProducer_t *producer)
{
    ZSTD_dictContentType_e dictContentType = ZSTD_dct_auto;
    FUZZ_dict_t dict = FUZZ_train(src, srcSize, producer);
    size_t cSize;
    if (FUZZ_dataProducer_uint32Range(producer, 0, 15) == 0) {
        int const cLevel = FUZZ_dataProducer_int32Range(producer, kMinClevel, kMaxClevel);

        cSize = ZSTD_compress_usingDict(cctx,
                compressed, compressedCapacity,
                src, srcSize,
                dict.buff, dict.size,
                cLevel);
    } else {
        dictContentType = FUZZ_dataProducer_uint32Range(producer, 0, 2);
        FUZZ_setRandomParameters(cctx, srcSize, producer);

        FUZZ_ZASSERT(ZSTD_CCtx_setParameter(cctx, ZSTD_c_checksumFlag, 0));
        FUZZ_ZASSERT(ZSTD_CCtx_loadDictionary_advanced(
                cctx, dict.buff, dict.size,
                (ZSTD_dictLoadMethod_e)FUZZ_dataProducer_uint32Range(producer, 0, 1),
                dictContentType));
        cSize = ZSTD_compress2(cctx, compressed, compressedCapacity, src, srcSize);
    }
    FUZZ_ZASSERT(cSize);
    FUZZ_ZASSERT(ZSTD_DCtx_loadDictionary_advanced(
        dctx, dict.buff, dict.size,
        (ZSTD_dictLoadMethod_e)FUZZ_dataProducer_uint32Range(producer, 0, 1),
        dictContentType));
    {
        size_t const ret = ZSTD_decompressDCtx(
                dctx, result, resultCapacity, compressed, cSize);
        free(dict.buff);
        return ret;
    }
}
