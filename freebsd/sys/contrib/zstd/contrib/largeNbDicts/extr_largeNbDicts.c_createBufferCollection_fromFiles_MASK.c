#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void** slicePtrs; size_t* capacities; unsigned int nbSlices; } ;
typedef  TYPE_1__ slice_collection_t ;
struct TYPE_6__ {void* ptr; size_t capacity; size_t size; } ;
typedef  TYPE_2__ buffer_t ;
struct TYPE_7__ {TYPE_1__ slices; TYPE_2__ buffer; } ;
typedef  TYPE_3__ buffer_collection_t ;
typedef  scalar_t__ U64 ;

/* Variables and functions */
 scalar_t__ const BENCH_SIZE_MAX ; 
 scalar_t__ const UTIL_FILESIZE_UNKNOWN ; 
 scalar_t__ FUNC0 (char const* const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned int,int) ; 
 int FUNC3 (void* const,size_t const,size_t* const,char const* const*,unsigned int) ; 
 void* FUNC4 (size_t const) ; 

__attribute__((used)) static buffer_collection_t
FUNC5(const char* const * fileNamesTable, unsigned nbFiles)
{
    U64 const totalSizeToLoad = FUNC0(fileNamesTable, nbFiles);
    FUNC1(totalSizeToLoad != UTIL_FILESIZE_UNKNOWN);
    FUNC1(totalSizeToLoad <= BENCH_SIZE_MAX);
    size_t const loadedSize = (size_t)totalSizeToLoad;
    FUNC1(loadedSize > 0);
    void* const srcBuffer = FUNC4(loadedSize);
    FUNC1(srcBuffer != NULL);

    FUNC1(nbFiles > 0);
    size_t* const fileSizes = (size_t*)FUNC2(nbFiles, sizeof(*fileSizes));
    FUNC1(fileSizes != NULL);

    /* Load input buffer */
    int const errorCode = FUNC3(srcBuffer, loadedSize,
                                    fileSizes,
                                    fileNamesTable, nbFiles);
    FUNC1(errorCode == 0);

    void** sliceTable = (void**)FUNC4(nbFiles * sizeof(*sliceTable));
    FUNC1(sliceTable != NULL);

    char* const ptr = (char*)srcBuffer;
    size_t pos = 0;
    unsigned fileNb = 0;
    for ( ; (pos < loadedSize) && (fileNb < nbFiles); fileNb++) {
        sliceTable[fileNb] = ptr + pos;
        pos += fileSizes[fileNb];
    }
    FUNC1(pos == loadedSize);
    FUNC1(fileNb == nbFiles);


    buffer_t buffer;
    buffer.ptr = srcBuffer;
    buffer.capacity = loadedSize;
    buffer.size = loadedSize;

    slice_collection_t slices;
    slices.slicePtrs = sliceTable;
    slices.capacities = fileSizes;
    slices.nbSlices = nbFiles;

    buffer_collection_t bc;
    bc.buffer = buffer;
    bc.slices = slices;
    return bc;
}