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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t const) ; 
 size_t FUNC1 (void* const,size_t const,void* const,size_t,int) ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (void* const) ; 
 void* FUNC4 (char const*,size_t*) ; 
 void* FUNC5 (size_t const) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,unsigned int,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,void* const,size_t const) ; 

__attribute__((used)) static void FUNC8(const char* fname, const char* oname)
{
    size_t fSize;
    void* const fBuff = FUNC4(fname, &fSize);
    size_t const cBuffSize = FUNC2(fSize);
    void* const cBuff = FUNC5(cBuffSize);

    /* Compress.
     * If you are doing many compressions, you may want to reuse the context.
     * See the multiple_simple_compression.c example.
     */
    size_t const cSize = FUNC1(cBuff, cBuffSize, fBuff, fSize, 1);
    FUNC0(cSize);

    FUNC7(oname, cBuff, cSize);

    /* success */
    FUNC6("%25s : %6u -> %7u - %s \n", fname, (unsigned)fSize, (unsigned)cSize, oname);

    FUNC3(fBuff);
    FUNC3(cBuff);
}