
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ZSTD_dictLoadMethod_e ;
typedef int ZSTD_dictContentType_e ;
typedef void ZSTD_DDict ;
struct TYPE_3__ {void* buff; int size; } ;
typedef TYPE_1__ FUZZ_dict_t ;
typedef int FUZZ_dataProducer_t ;


 int FUZZ_ASSERT (void*) ;
 int FUZZ_ZASSERT (int ) ;
 int * FUZZ_dataProducer_create (int const*,size_t) ;
 int FUZZ_dataProducer_free (int *) ;
 size_t FUZZ_dataProducer_reserveDataPrefix (int *) ;
 size_t FUZZ_dataProducer_uint32Range (int *,int ,int) ;
 TYPE_1__ FUZZ_train (int const*,size_t,int *) ;
 int ZSTD_DCtx_loadDictionary_advanced (void*,void*,int ,int ,int ) ;
 void* ZSTD_createDCtx () ;
 void* ZSTD_createDDict (void*,int ) ;
 int ZSTD_decompressDCtx (void*,void*,size_t const,int const*,size_t) ;
 int ZSTD_decompress_usingDDict (void*,void*,size_t const,int const*,size_t,void*) ;
 int ZSTD_freeDCtx (void*) ;
 int ZSTD_freeDDict (void*) ;
 void* dctx ;
 int free (void*) ;
 void* malloc (size_t const) ;

int LLVMFuzzerTestOneInput(const uint8_t *src, size_t size)
{


    FUZZ_dataProducer_t *producer = FUZZ_dataProducer_create(src, size);
    size = FUZZ_dataProducer_reserveDataPrefix(producer);

    FUZZ_dict_t dict;
    ZSTD_DDict* ddict = ((void*)0);

    if (!dctx) {
        dctx = ZSTD_createDCtx();
        FUZZ_ASSERT(dctx);
    }
    dict = FUZZ_train(src, size, producer);
    if (FUZZ_dataProducer_uint32Range(producer, 0, 1) == 0) {
        ddict = ZSTD_createDDict(dict.buff, dict.size);
        FUZZ_ASSERT(ddict);
    } else {
        FUZZ_ZASSERT(ZSTD_DCtx_loadDictionary_advanced(
                dctx, dict.buff, dict.size,
                (ZSTD_dictLoadMethod_e)FUZZ_dataProducer_uint32Range(producer, 0, 1),
                (ZSTD_dictContentType_e)FUZZ_dataProducer_uint32Range(producer, 0, 2)));
    }

    {
        size_t const bufSize = FUZZ_dataProducer_uint32Range(producer, 0, 10 * size);
        void* rBuf = malloc(bufSize);
        FUZZ_ASSERT(rBuf);
        if (ddict) {
            ZSTD_decompress_usingDDict(dctx, rBuf, bufSize, src, size, ddict);
        } else {
            ZSTD_decompressDCtx(dctx, rBuf, bufSize, src, size);
        }
        free(rBuf);
    }
    free(dict.buff);
    FUZZ_dataProducer_free(producer);
    ZSTD_freeDDict(ddict);

    ZSTD_freeDCtx(dctx); dctx = ((void*)0);

    return 0;
}
