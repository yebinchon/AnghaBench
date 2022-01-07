
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int decompressedData ;
typedef int dataToCompress ;
typedef int compressedData ;
struct TYPE_8__ {char* member_0; int member_1; size_t pos; int member_2; } ;
typedef TYPE_1__ ZSTD_outBuffer ;
struct TYPE_9__ {char const* member_0; int member_1; int member_2; } ;
typedef TYPE_2__ ZSTD_inBuffer ;
typedef int ZSTD_DCtx ;
typedef int ZSTD_CCtx_params ;
typedef int ZSTD_CCtx ;


 int CHECK (int,char*,...) ;
 int CHECK_ZSTD (size_t const) ;
 int COMPRESSED_SIZE ;
 int INPUT_SIZE ;
 int MAX_TESTED_LEVEL ;
 size_t const ZSTD_CCtxParams_setParameter (int * const,int ,unsigned int) ;
 size_t const ZSTD_CCtx_setParametersUsingCCtxParams (int * const,int * const) ;
 size_t const ZSTD_DCtx_setParameter (int * const,int ,unsigned int) ;
 int ZSTD_c_compressionLevel ;
 int ZSTD_c_windowLog ;
 size_t const ZSTD_compressStream (int * const,TYPE_1__*,TYPE_2__*) ;
 int * ZSTD_createCCtx () ;
 int * ZSTD_createCCtxParams () ;
 int * ZSTD_createDCtx () ;
 int ZSTD_d_windowLogMax ;
 size_t ZSTD_decompressStream (int * const,TYPE_1__*,TYPE_2__*) ;
 size_t ZSTD_endStream (int * const,TYPE_1__*) ;
 size_t ZSTD_estimateCStreamSize_usingCCtxParams (int * const) ;
 size_t ZSTD_estimateDStreamSize_fromFrame (char*,size_t) ;
 int ZSTD_freeCCtx (int * const) ;
 int ZSTD_freeCCtxParams (int * const) ;
 int ZSTD_freeDCtx (int * const) ;
 size_t ZSTD_sizeof_CStream (int * const) ;
 size_t ZSTD_sizeof_DStream (int * const) ;
 char* ZSTD_versionString () ;
 int printf (char*,...) ;
 unsigned int readU32FromChar (char const**) ;

int main(int argc, char const *argv[]) {

    printf("\n Zstandard (v%s) memory usage for streaming : \n\n", ZSTD_versionString());

    unsigned wLog = 0;
    if (argc > 1) {
        const char* valStr = argv[1];
        wLog = readU32FromChar(&valStr);
    }

    int compressionLevel;
    for (compressionLevel = 1; compressionLevel <= MAX_TESTED_LEVEL; compressionLevel++) {


        char const dataToCompress[5] = "abcde";
        char compressedData[128];
        char decompressedData[5];




        ZSTD_CCtx_params* const cctxParams = ZSTD_createCCtxParams();
        CHECK(cctxParams != ((void*)0), "ZSTD_createCCtxParams() failed!");


        CHECK_ZSTD( ZSTD_CCtxParams_setParameter(cctxParams, ZSTD_c_compressionLevel, compressionLevel) );




        CHECK_ZSTD( ZSTD_CCtxParams_setParameter(cctxParams, ZSTD_c_windowLog, wLog) );





        ZSTD_CCtx* const cctx = ZSTD_createCCtx();
        CHECK(cctx != ((void*)0), "ZSTD_createCCtx() failed!");
        CHECK_ZSTD( ZSTD_CCtx_setParametersUsingCCtxParams(cctx, cctxParams) );
        size_t compressedSize;
        {
            ZSTD_inBuffer inBuff = { dataToCompress, sizeof(dataToCompress), 0 };
            ZSTD_outBuffer outBuff = { compressedData, sizeof(compressedData), 0 };
            CHECK_ZSTD( ZSTD_compressStream(cctx, &outBuff, &inBuff) );
            size_t const remaining = ZSTD_endStream(cctx, &outBuff);
            CHECK_ZSTD(remaining);
            CHECK(remaining == 0, "Frame not flushed!");
            compressedSize = outBuff.pos;
        }

        ZSTD_DCtx* const dctx = ZSTD_createDCtx();
        CHECK(dctx != ((void*)0), "ZSTD_createDCtx() failed!");




        CHECK_ZSTD( ZSTD_DCtx_setParameter(dctx, ZSTD_d_windowLogMax, wLog) );



        { ZSTD_inBuffer inBuff = { compressedData, compressedSize, 0 };
            ZSTD_outBuffer outBuff = { decompressedData, sizeof(decompressedData), 0 };
            size_t const remaining = ZSTD_decompressStream(dctx, &outBuff, &inBuff);
            CHECK_ZSTD(remaining);
            CHECK(remaining == 0, "Frame not complete!");
            CHECK(outBuff.pos == sizeof(dataToCompress), "Bad decompression!");
        }

        size_t const cstreamSize = ZSTD_sizeof_CStream(cctx);
        size_t const cstreamEstimatedSize = ZSTD_estimateCStreamSize_usingCCtxParams(cctxParams);
        size_t const dstreamSize = ZSTD_sizeof_DStream(dctx);
        size_t const dstreamEstimatedSize = ZSTD_estimateDStreamSize_fromFrame(compressedData, compressedSize);

        CHECK(cstreamSize <= cstreamEstimatedSize, "Compression mem (%u) > estimated (%u)",
                (unsigned)cstreamSize, (unsigned)cstreamEstimatedSize);
        CHECK(dstreamSize <= dstreamEstimatedSize, "Decompression mem (%u) > estimated (%u)",
                (unsigned)dstreamSize, (unsigned)dstreamEstimatedSize);

        printf("Level %2i : Compression Mem = %5u KB (estimated : %5u KB) ; Decompression Mem = %4u KB (estimated : %5u KB)\n",
                compressionLevel,
                (unsigned)(cstreamSize>>10), (unsigned)(cstreamEstimatedSize>>10),
                (unsigned)(dstreamSize>>10), (unsigned)(dstreamEstimatedSize>>10));

        ZSTD_freeDCtx(dctx);
        ZSTD_freeCCtx(cctx);
        ZSTD_freeCCtxParams(cctxParams);
        if (wLog) break;
    }
    return 0;
}
