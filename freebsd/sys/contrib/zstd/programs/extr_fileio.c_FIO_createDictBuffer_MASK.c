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
typedef  int U64 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int DICTSIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 size_t FUNC6 (void*,int,size_t,int /*<<< orphan*/ *) ; 
 void* FUNC7 (size_t) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC9(void** bufferPtr, const char* fileName)
{
    FILE* fileHandle;
    U64 fileSize;

    FUNC3(bufferPtr != NULL);
    *bufferPtr = NULL;
    if (fileName == NULL) return 0;

    FUNC0(4,"Loading %s as dictionary \n", fileName);
    fileHandle = FUNC5(fileName, "rb");
    if (fileHandle==NULL) FUNC1(31, "%s: %s", fileName, FUNC8(errno));

    fileSize = FUNC2(fileName);
    if (fileSize > DICTSIZE_MAX) {
        FUNC1(32, "Dictionary file %s is too large (> %u MB)",
                        fileName, DICTSIZE_MAX >> 20);   /* avoid extreme cases */
    }
    *bufferPtr = FUNC7((size_t)fileSize);
    if (*bufferPtr==NULL) FUNC1(34, "%s", FUNC8(errno));
    {   size_t const readSize = FUNC6(*bufferPtr, 1, (size_t)fileSize, fileHandle);
        if (readSize != fileSize)
            FUNC1(35, "Error reading dictionary file %s : %s",
                    fileName, FUNC8(errno));
    }
    FUNC4(fileHandle);
    return (size_t)fileSize;
}