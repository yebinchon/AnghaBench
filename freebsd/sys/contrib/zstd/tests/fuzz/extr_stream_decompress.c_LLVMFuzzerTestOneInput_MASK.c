#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ZSTD_outBuffer ;
struct TYPE_4__ {scalar_t__ pos; scalar_t__ size; } ;
typedef  TYPE_1__ ZSTD_inBuffer ;
typedef  int /*<<< orphan*/  FUZZ_dataProducer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 size_t FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (size_t const) ; 
 int /*<<< orphan*/  ZSTD_reset_session_only ; 
 int /*<<< orphan*/ * buf ; 
 int /*<<< orphan*/ * dstream ; 
 int /*<<< orphan*/  kBufSize ; 
 TYPE_1__ FUNC10 (int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(const uint8_t *src, size_t size)
{
    /* Give a random portion of src data to the producer, to use for
    parameter generation. The rest will be used for (de)compression */
    FUZZ_dataProducer_t *producer = FUNC2(src, size);
    size = FUNC4(producer);

    /* Allocate all buffers and contexts if not already allocated */
    if (!buf) {
      buf = FUNC12(kBufSize);
        FUNC0(buf);
      }

    if (!dstream) {
        dstream = FUNC6();
        FUNC0(dstream);
    } else {
        FUNC1(FUNC5(dstream, ZSTD_reset_session_only));
    }

    while (size > 0) {
        ZSTD_inBuffer in = FUNC10(&src, &size, producer);
        while (in.pos != in.size) {
            ZSTD_outBuffer out = FUNC11(producer);
            size_t const rc = FUNC7(dstream, &out, &in);
            if (FUNC9(rc)) goto error;
        }
    }

error:
#ifndef STATEFUL_FUZZING
    FUNC8(dstream); dstream = NULL;
#endif
    FUNC3(producer);
    return 0;
}