#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ZSTD_dictLoadMethod_e ;
typedef  int /*<<< orphan*/  ZSTD_dictContentType_e ;
typedef  void ZSTD_DDict ;
struct TYPE_3__ {void* buff; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ FUZZ_dict_t ;
typedef  int /*<<< orphan*/  FUZZ_dataProducer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ FUNC6 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC8 () ; 
 void* FUNC9 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,void*,size_t const,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (void*,void*,size_t const,int /*<<< orphan*/  const*,size_t,void*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 void* dctx ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 void* FUNC15 (size_t const) ; 

int FUNC16(const uint8_t *src, size_t size)
{
    /* Give a random portion of src data to the producer, to use for
    parameter generation. The rest will be used for (de)compression */
    FUZZ_dataProducer_t *producer = FUNC2(src, size);
    size = FUNC4(producer);

    FUZZ_dict_t dict;
    ZSTD_DDict* ddict = NULL;

    if (!dctx) {
        dctx = FUNC8();
        FUNC0(dctx);
    }
    dict = FUNC6(src, size, producer);
    if (FUNC5(producer, 0, 1) == 0) {
        ddict = FUNC9(dict.buff, dict.size);
        FUNC0(ddict);
    } else {
        FUNC1(FUNC7(
                dctx, dict.buff, dict.size,
                (ZSTD_dictLoadMethod_e)FUNC5(producer, 0, 1),
                (ZSTD_dictContentType_e)FUNC5(producer, 0, 2)));
    }

    {
        size_t const bufSize = FUNC5(producer, 0, 10 * size);
        void* rBuf = FUNC15(bufSize);
        FUNC0(rBuf);
        if (ddict) {
            FUNC11(dctx, rBuf, bufSize, src, size, ddict);
        } else {
            FUNC10(dctx, rBuf, bufSize, src, size);
        }
        FUNC14(rBuf);
    }
    FUNC14(dict.buff);
    FUNC3(producer);
    FUNC13(ddict);
#ifndef STATEFUL_FUZZING
    FUNC12(dctx); dctx = NULL;
#endif
    return 0;
}