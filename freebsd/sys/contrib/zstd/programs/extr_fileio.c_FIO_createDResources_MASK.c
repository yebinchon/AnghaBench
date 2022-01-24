#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ress ;
struct TYPE_6__ {int /*<<< orphan*/ * dctx; void* dstBuffer; void* srcBuffer; int /*<<< orphan*/  dstBufferSize; int /*<<< orphan*/  srcBufferSize; } ;
typedef  TYPE_1__ dRess_t ;
struct TYPE_7__ {int /*<<< orphan*/  memLimit; } ;
typedef  TYPE_2__ FIO_prefs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 size_t FUNC2 (void**,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*,size_t const) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static dRess_t FUNC12(FIO_prefs_t* const prefs, const char* dictFileName)
{
    dRess_t ress;
    FUNC10(&ress, 0, sizeof(ress));

    /* Allocation */
    ress.dctx = FUNC6();
    if (ress.dctx==NULL)
        FUNC1(60, "Error: %s : can't create ZSTD_DStream", FUNC11(errno));
    FUNC0( FUNC3(ress.dctx, prefs->memLimit) );
    ress.srcBufferSize = FUNC4();
    ress.srcBuffer = FUNC9(ress.srcBufferSize);
    ress.dstBufferSize = FUNC5();
    ress.dstBuffer = FUNC9(ress.dstBufferSize);
    if (!ress.srcBuffer || !ress.dstBuffer)
        FUNC1(61, "Allocation error : not enough memory");

    /* dictionary */
    {   void* dictBuffer;
        size_t const dictBufferSize = FUNC2(&dictBuffer, dictFileName);
        FUNC0( FUNC7(ress.dctx, dictBuffer, dictBufferSize) );
        FUNC8(dictBuffer);
    }

    return ress;
}