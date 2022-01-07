
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FUZZ_dataProducer_t ;


 int FUZZ_ASSERT (int *) ;
 int FUZZ_ASSERT_MSG (int,char*) ;
 int FUZZ_ZASSERT (size_t const) ;
 int * FUZZ_dataProducer_create (int const*,size_t) ;
 int FUZZ_dataProducer_free (int *) ;
 size_t FUZZ_dataProducer_reserveDataPrefix (int *) ;
 scalar_t__ FUZZ_dataProducer_uint32Range (int *,int ,int) ;
 size_t ZSTD_compressBound (size_t) ;
 int * ZSTD_createCCtx () ;
 int * ZSTD_createDCtx () ;
 int ZSTD_freeCCtx (int *) ;
 int ZSTD_freeDCtx (int *) ;
 int * cctx ;
 int * dctx ;
 int free (void*) ;
 void* malloc (size_t const) ;
 int memcmp (int const*,void*,size_t) ;
 size_t roundTripTest (void*,size_t const,void*,size_t,int const*,size_t,int *) ;

int LLVMFuzzerTestOneInput(const uint8_t *src, size_t size)
{


    FUZZ_dataProducer_t *producer = FUZZ_dataProducer_create(src, size);
    size = FUZZ_dataProducer_reserveDataPrefix(producer);

    size_t const rBufSize = size;
    void* rBuf = malloc(rBufSize);
    size_t cBufSize = ZSTD_compressBound(size);
    void *cBuf;




    cBufSize -= FUZZ_dataProducer_uint32Range(producer, 0, 1);
    cBuf = malloc(cBufSize);

    if (!cctx) {
        cctx = ZSTD_createCCtx();
        FUZZ_ASSERT(cctx);
    }
    if (!dctx) {
        dctx = ZSTD_createDCtx();
        FUZZ_ASSERT(dctx);
    }

    {
        size_t const result =
            roundTripTest(rBuf, rBufSize, cBuf, cBufSize, src, size, producer);
        FUZZ_ZASSERT(result);
        FUZZ_ASSERT_MSG(result == size, "Incorrect regenerated size");
        FUZZ_ASSERT_MSG(!memcmp(src, rBuf, size), "Corruption!");
    }
    free(rBuf);
    free(cBuf);
    FUZZ_dataProducer_free(producer);

    ZSTD_freeCCtx(cctx); cctx = ((void*)0);
    ZSTD_freeDCtx(dctx); dctx = ((void*)0);

    return 0;
}
