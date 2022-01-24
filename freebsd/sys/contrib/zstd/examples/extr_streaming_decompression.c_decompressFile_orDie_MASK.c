#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* const member_0; size_t const member_1; int /*<<< orphan*/  pos; int /*<<< orphan*/  member_2; } ;
typedef  TYPE_1__ ZSTD_outBuffer ;
struct TYPE_6__ {void* const member_0; size_t member_1; scalar_t__ pos; scalar_t__ size; int /*<<< orphan*/  member_2; } ;
typedef  TYPE_2__ ZSTD_inBuffer ;
typedef  int /*<<< orphan*/  ZSTD_DCtx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t const) ; 
 size_t FUNC2 () ; 
 size_t FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 size_t FUNC5 (int /*<<< orphan*/ * const,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC11 (void* const,size_t const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC12 (void* const) ; 
 int /*<<< orphan*/  FUNC13 (void* const,int /*<<< orphan*/ ,int /*<<< orphan*/ * const) ; 
 void* FUNC14 (size_t const) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 

__attribute__((used)) static void FUNC15(const char* fname)
{
    FILE* const fin  = FUNC9(fname, "rb");
    size_t const buffInSize = FUNC2();
    void*  const buffIn  = FUNC14(buffInSize);
    FILE* const fout = stdout;
    size_t const buffOutSize = FUNC3();  /* Guarantee to successfully flush at least one complete compressed block in all circumstances. */
    void*  const buffOut = FUNC14(buffOutSize);

    ZSTD_DCtx* const dctx = FUNC4();
    FUNC0(dctx != NULL, "ZSTD_createDCtx() failed!");

    /* This loop assumes that the input file is one or more concatenated zstd
     * streams. This example won't work if there is trailing non-zstd data at
     * the end, but streaming decompression in general handles this case.
     * ZSTD_decompressStream() returns 0 exactly when the frame is completed,
     * and doesn't consume input after the frame.
     */
    size_t const toRead = buffInSize;
    size_t read;
    size_t lastRet = 0;
    int isEmpty = 1;
    while ( (read = FUNC11(buffIn, toRead, fin)) ) {
        isEmpty = 0;
        ZSTD_inBuffer input = { buffIn, read, 0 };
        /* Given a valid frame, zstd won't consume the last byte of the frame
         * until it has flushed all of the decompressed data of the frame.
         * Therefore, instead of checking if the return code is 0, we can
         * decompress just check if input.pos < input.size.
         */
        while (input.pos < input.size) {
            ZSTD_outBuffer output = { buffOut, buffOutSize, 0 };
            /* The return code is zero if the frame is complete, but there may
             * be multiple frames concatenated together. Zstd will automatically
             * reset the context when a frame is complete. Still, calling
             * ZSTD_DCtx_reset() can be useful to reset the context to a clean
             * state, for instance if the last decompression call returned an
             * error.
             */
            size_t const ret = FUNC5(dctx, &output , &input);
            FUNC1(ret);
            FUNC13(buffOut, output.pos, fout);
            lastRet = ret;
        }
    }

    if (isEmpty) {
        FUNC10(stderr, "input is empty\n");
        FUNC7(1);
    }

    if (lastRet != 0) {
        /* The last return value from ZSTD_decompressStream did not end on a
         * frame, but we reached the end of the file! We assume this is an
         * error, and the input was truncated.
         */
        FUNC10(stderr, "EOF before end of stream: %zu\n", lastRet);
        FUNC7(1);
    }

    FUNC6(dctx);
    FUNC8(fin);
    FUNC8(fout);
    FUNC12(buffIn);
    FUNC12(buffOut);
}