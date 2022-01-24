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
struct TYPE_3__ {int /*<<< orphan*/  cBuffer; int /*<<< orphan*/  fBuffer; int /*<<< orphan*/  cBufferSize; int /*<<< orphan*/  cctx; int /*<<< orphan*/  fBufferSize; } ;
typedef  TYPE_1__ resources ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t const) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 
 size_t FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,unsigned int,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,size_t const) ; 

__attribute__((used)) static void FUNC5(resources ress, const char* fname, const char* oname)
{
    size_t fSize = FUNC2(fname, ress.fBuffer, ress.fBufferSize);

    /* Compress using the context.
     * If you need more control over parameters, use the advanced API:
     * ZSTD_CCtx_setParameter(), and ZSTD_compress2().
     */
    size_t const cSize = FUNC1(ress.cctx, ress.cBuffer, ress.cBufferSize, ress.fBuffer, fSize, 1);
    FUNC0(cSize);

    FUNC4(oname, ress.cBuffer, cSize);

    /* success */
    FUNC3("%25s : %6u -> %7u - %s \n", fname, (unsigned)fSize, (unsigned)cSize, oname);
}