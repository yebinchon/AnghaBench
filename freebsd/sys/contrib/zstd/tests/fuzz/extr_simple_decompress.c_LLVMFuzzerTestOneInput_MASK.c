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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  FUZZ_dataProducer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (void*,void*,size_t const,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 void* dctx ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (size_t const) ; 

int FUNC10(const uint8_t *src, size_t size)
{
    /* Give a random portion of src data to the producer, to use for
    parameter generation. The rest will be used for (de)compression */
    FUZZ_dataProducer_t *producer = FUNC1(src, size);
    size = FUNC3(producer);

    if (!dctx) {
        dctx = FUNC5();
        FUNC0(dctx);
    }

    size_t const bufSize = FUNC4(producer, 0, 10 * size);
    void *rBuf = FUNC9(bufSize);
    FUNC0(rBuf);

    FUNC6(dctx, rBuf, bufSize, src, size);
    FUNC8(rBuf);

    FUNC2(producer);

#ifndef STATEFUL_FUZZING
    FUNC7(dctx); dctx = NULL;
#endif
    return 0;
}