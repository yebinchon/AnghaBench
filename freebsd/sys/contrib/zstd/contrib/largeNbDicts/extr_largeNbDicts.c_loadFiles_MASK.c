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
typedef  scalar_t__ U64 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ UTIL_FILESIZE_UNKNOWN ; 
 scalar_t__ FUNC0 (char const* const) ; 
 scalar_t__ FUNC1 (char const* const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC4 (char const* const,char*) ; 
 size_t FUNC5 (char*,int,size_t,int /*<<< orphan*/ * const) ; 

__attribute__((used)) static int FUNC6(void* buffer, size_t bufferSize,
                     size_t* fileSizes,
                     const char* const * fileNamesTable, unsigned nbFiles)
{
    size_t pos = 0, totalSize = 0;

    for (unsigned n=0; n<nbFiles; n++) {
        U64 fileSize = FUNC0(fileNamesTable[n]);
        if (FUNC1(fileNamesTable[n])) {
            fileSizes[n] = 0;
            continue;
        }
        if (fileSize == UTIL_FILESIZE_UNKNOWN) {
            fileSizes[n] = 0;
            continue;
        }

        FILE* const f = FUNC4(fileNamesTable[n], "rb");
        FUNC2(f!=NULL);

        FUNC2(pos <= bufferSize);
        FUNC2(fileSize <= bufferSize - pos);

        {   size_t const readSize = FUNC5(((char*)buffer)+pos, 1, (size_t)fileSize, f);
            FUNC2(readSize == fileSize);
            pos += readSize;
        }
        fileSizes[n] = (size_t)fileSize;
        totalSize += (size_t)fileSize;
        FUNC3(f);
    }

    FUNC2(totalSize == bufferSize);
    return 0;
}