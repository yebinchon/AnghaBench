#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t buffInSize; int /*<<< orphan*/  buffOut; int /*<<< orphan*/  cctx; int /*<<< orphan*/  buffOutSize; int /*<<< orphan*/  buffIn; } ;
typedef  TYPE_1__ resources ;
struct TYPE_8__ {int /*<<< orphan*/  pos; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ ZSTD_outBuffer ;
struct TYPE_9__ {size_t member_1; scalar_t__ pos; scalar_t__ size; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ ZSTD_inBuffer ;
typedef  int /*<<< orphan*/  ZSTD_EndDirective ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t const) ; 
 size_t const FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_3__*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  ZSTD_e_continue ; 
 int /*<<< orphan*/  ZSTD_e_end ; 
 int /*<<< orphan*/  ZSTD_reset_session_only ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,size_t const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ * const) ; 

__attribute__((used)) static void FUNC8(resources ress, const char* fname, const char* outName)
{
    // Open the input and output files.
    FILE* const fin  = FUNC5(fname, "rb");
    FILE* const fout = FUNC5(outName, "wb");

    /* Reset the context to a clean state to start a new compression operation.
     * The parameters are sticky, so we keep the compression level and extra
     * parameters that we set in createResources_orDie().
     */
    FUNC1( FUNC2(ress.cctx, ZSTD_reset_session_only) );

    size_t const toRead = ress.buffInSize;
    size_t read;
    while ( (read = FUNC6(ress.buffIn, toRead, fin)) ) {
        /* This loop is the same as streaming_compression.c.
         * See that file for detailed comments.
         */
        int const lastChunk = (read < toRead);
        ZSTD_EndDirective const mode = lastChunk ? ZSTD_e_end : ZSTD_e_continue;

        ZSTD_inBuffer input = { ress.buffIn, read, 0 };
        int finished;
        do {
            ZSTD_outBuffer output = { ress.buffOut, ress.buffOutSize, 0 };
            size_t const remaining = FUNC3(ress.cctx, &output, &input, mode);
            FUNC1(remaining);
            FUNC7(ress.buffOut, output.pos, fout);
            finished = lastChunk ? (remaining == 0) : (input.pos == input.size);
        } while (!finished);
        FUNC0(input.pos == input.size,
              "Impossible: zstd only returns 0 when the input is completely consumed!");
    }

    FUNC4(fout);
    FUNC4(fin);
}