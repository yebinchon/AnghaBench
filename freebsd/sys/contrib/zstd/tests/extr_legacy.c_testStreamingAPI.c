
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* const member_0; size_t const member_1; scalar_t__ pos; scalar_t__ size; int member_2; } ;
typedef TYPE_1__ ZSTD_outBuffer ;
struct TYPE_6__ {scalar_t__ pos; scalar_t__ size; int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ ZSTD_inBuffer ;
typedef int ZSTD_DStream ;


 int COMPRESSED ;
 int COMPRESSED_SIZE ;
 int DISPLAY (char*,...) ;
 scalar_t__ EXPECTED ;
 size_t ZSTD_DStreamOutSize () ;
 int * ZSTD_createDStream () ;
 size_t ZSTD_decompressStream (int * const,TYPE_1__*,TYPE_2__*) ;
 int ZSTD_freeDStream (int * const) ;
 int ZSTD_getErrorName (size_t const) ;
 size_t ZSTD_initDStream (int * const) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 int free (char* const) ;
 char* malloc (size_t const) ;
 scalar_t__ memcmp (char* const,scalar_t__,scalar_t__) ;

__attribute__((used)) static int testStreamingAPI(void)
{
    int error_code = 0;
    size_t const outBuffSize = ZSTD_DStreamOutSize();
    char* const outBuff = malloc(outBuffSize);
    ZSTD_DStream* const stream = ZSTD_createDStream();
    ZSTD_inBuffer input = { COMPRESSED, COMPRESSED_SIZE, 0 };
    size_t outputPos = 0;
    int needsInit = 1;

    if (outBuff == ((void*)0)) {
        DISPLAY("ERROR: Could not allocate memory\n");
        return 1;
    }
    if (stream == ((void*)0)) {
        DISPLAY("ERROR: Could not create dstream\n");
        free(outBuff);
        return 1;
    }

    while (1) {
        ZSTD_outBuffer output = {outBuff, outBuffSize, 0};
        if (needsInit) {
            size_t const ret = ZSTD_initDStream(stream);
            if (ZSTD_isError(ret)) {
                DISPLAY("ERROR: ZSTD_initDStream: %s\n", ZSTD_getErrorName(ret));
                error_code = 1;
                break;
        } }

        { size_t const ret = ZSTD_decompressStream(stream, &output, &input);
            if (ZSTD_isError(ret)) {
                DISPLAY("ERROR: ZSTD_decompressStream: %s\n", ZSTD_getErrorName(ret));
                error_code = 1;
                break;
            }

            if (ret == 0) {
                needsInit = 1;
        } }

        if (memcmp(outBuff, EXPECTED + outputPos, output.pos) != 0) {
            DISPLAY("ERROR: Wrong decoded output produced\n");
            error_code = 1;
            break;
        }
        outputPos += output.pos;
        if (input.pos == input.size && output.pos < output.size) {
            break;
        }
    }

    free(outBuff);
    ZSTD_freeDStream(stream);
    if (error_code == 0) DISPLAY("Streaming API OK\n");
    return error_code;
}
