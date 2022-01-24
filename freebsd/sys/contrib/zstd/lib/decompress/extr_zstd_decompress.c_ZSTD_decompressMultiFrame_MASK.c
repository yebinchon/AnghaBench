#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_DDict ;
struct TYPE_7__ {size_t staticSize; int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ ZSTD_DCtx ;
typedef  int U32 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (size_t const) ; 
 int FUNC2 (void const*) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ ,char*) ; 
 void* FUNC4 (int /*<<< orphan*/  const*) ; 
 size_t FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ZSTD_MAGICNUMBER ; 
 int const ZSTD_MAGIC_SKIPPABLE_MASK ; 
 int const ZSTD_MAGIC_SKIPPABLE_START ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,void*) ; 
 size_t const FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 size_t const FUNC8 (TYPE_1__*,void const*,size_t) ; 
 size_t FUNC9 (TYPE_1__*,void*,size_t,void const**,size_t*) ; 
 size_t FUNC10 (void*,size_t,void const*,size_t const,void const*,size_t) ; 
 scalar_t__ ZSTD_error_prefix_unknown ; 
 size_t FUNC11 (void const*,size_t) ; 
 scalar_t__ FUNC12 (size_t const) ; 
 scalar_t__ FUNC13 (size_t const) ; 
 scalar_t__ FUNC14 (void const*,size_t) ; 
 size_t FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  memory_allocation ; 
 size_t FUNC17 (void const*,size_t) ; 
 int /*<<< orphan*/  srcSize_wrong ; 

__attribute__((used)) static size_t FUNC18(ZSTD_DCtx* dctx,
                                        void* dst, size_t dstCapacity,
                                  const void* src, size_t srcSize,
                                  const void* dict, size_t dictSize,
                                  const ZSTD_DDict* ddict)
{
    void* const dststart = dst;
    int moreThan1Frame = 0;

    FUNC0(5, "ZSTD_decompressMultiFrame");
    FUNC16(dict==NULL || ddict==NULL);  /* either dict or ddict set, not both */

    if (ddict) {
        dict = FUNC4(ddict);
        dictSize = FUNC5(ddict);
    }

    while (srcSize >= FUNC15(dctx->format)) {

#if defined(ZSTD_LEGACY_SUPPORT) && (ZSTD_LEGACY_SUPPORT >= 1)
        if (ZSTD_isLegacy(src, srcSize)) {
            size_t decodedSize;
            size_t const frameSize = ZSTD_findFrameCompressedSizeLegacy(src, srcSize);
            if (ZSTD_isError(frameSize)) return frameSize;
            RETURN_ERROR_IF(dctx->staticSize, memory_allocation,
                "legacy support is not compatible with static dctx");

            decodedSize = ZSTD_decompressLegacy(dst, dstCapacity, src, frameSize, dict, dictSize);
            if (ZSTD_isError(decodedSize)) return decodedSize;

            assert(decodedSize <=- dstCapacity);
            dst = (BYTE*)dst + decodedSize;
            dstCapacity -= decodedSize;

            src = (const BYTE*)src + frameSize;
            srcSize -= frameSize;

            continue;
        }
#endif

        {   U32 const magicNumber = FUNC2(src);
            FUNC0(4, "reading magic number %08X (expecting %08X)",
                        (unsigned)magicNumber, ZSTD_MAGICNUMBER);
            if ((magicNumber & ZSTD_MAGIC_SKIPPABLE_MASK) == ZSTD_MAGIC_SKIPPABLE_START) {
                size_t const skippableSize = FUNC17(src, srcSize);
                FUNC1(skippableSize);
                FUNC16(skippableSize <= srcSize);

                src = (const BYTE *)src + skippableSize;
                srcSize -= skippableSize;
                continue;
        }   }

        if (ddict) {
            /* we were called from ZSTD_decompress_usingDDict */
            FUNC1(FUNC7(dctx, ddict));
        } else {
            /* this will initialize correctly with no dict if dict == NULL, so
             * use this in all cases but ddict */
            FUNC1(FUNC8(dctx, dict, dictSize));
        }
        FUNC6(dctx, dst);

        {   const size_t res = FUNC9(dctx, dst, dstCapacity,
                                                    &src, &srcSize);
            FUNC3(
                (FUNC12(res) == ZSTD_error_prefix_unknown)
             && (moreThan1Frame==1),
                srcSize_wrong,
                "at least one frame successfully completed, but following "
                "bytes are garbage: it's more likely to be a srcSize error, "
                "specifying more bytes than compressed size of frame(s). This "
                "error message replaces ERROR(prefix_unknown), which would be "
                "confusing, as the first header is actually correct. Note that "
                "one could be unlucky, it might be a corruption error instead, "
                "happening right at the place where we expect zstd magic "
                "bytes. But this is _much_ less likely than a srcSize field "
                "error.");
            if (FUNC13(res)) return res;
            FUNC16(res <= dstCapacity);
            dst = (BYTE*)dst + res;
            dstCapacity -= res;
        }
        moreThan1Frame = 1;
    }  /* while (srcSize >= ZSTD_frameHeaderSize_prefix) */

    FUNC3(srcSize, srcSize_wrong, "input not entirely consumed");

    return (BYTE*)dst - (BYTE*)dststart;
}