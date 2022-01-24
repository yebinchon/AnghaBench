#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sum_job {int done; unsigned long long sum; int /*<<< orphan*/  frameNb; int /*<<< orphan*/  fname; } ;
typedef  int /*<<< orphan*/  ZSTD_seekable ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (size_t const) ; 
 scalar_t__ FUNC1 (size_t const) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 size_t FUNC3 (int /*<<< orphan*/ * const,unsigned char*,size_t const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const) ; 
 size_t FUNC5 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*) ; 
 unsigned char* FUNC12 (size_t const) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC13(void* opaque)
{
    struct sum_job* job = (struct sum_job*)opaque;
    job->done = 0;

    FILE* const fin = FUNC9(job->fname, "rb");

    ZSTD_seekable* const seekable = FUNC2();
    if (seekable==NULL) { FUNC10(stderr, "ZSTD_seekable_create() error \n"); FUNC7(10); }

    size_t const initResult = FUNC6(seekable, fin);
    if (FUNC1(initResult)) { FUNC10(stderr, "ZSTD_seekable_init() error : %s \n", FUNC0(initResult)); FUNC7(11); }

    size_t const frameSize = FUNC5(seekable, job->frameNb);
    unsigned char* data = FUNC12(frameSize);

    size_t result = FUNC3(seekable, data, frameSize, job->frameNb);
    if (FUNC1(result)) { FUNC10(stderr, "ZSTD_seekable_decompressFrame() error : %s \n", FUNC0(result)); FUNC7(12); }

    unsigned long long sum = 0;
    size_t i;
    for (i = 0; i < frameSize; i++) {
        sum += data[i];
    }
    job->sum = sum;
    job->done = 1;

    FUNC8(fin);
    FUNC4(seekable);
    FUNC11(data);
}