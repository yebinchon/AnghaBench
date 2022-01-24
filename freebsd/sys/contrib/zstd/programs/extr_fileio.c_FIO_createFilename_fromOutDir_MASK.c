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
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static char*
FUNC6(const char* path, const char* outDirName, const size_t suffixLen)
{
    const char* filenameStart;
    char separator;
    char* result;

#if defined(_MSC_VER) || defined(__MINGW32__) || defined (__MSVCRT__) /* windows support */
    separator = '\\';
#else
    separator = '/';
#endif

    filenameStart = FUNC2(path, separator);
#if defined(_MSC_VER) || defined(__MINGW32__) || defined (__MSVCRT__) /* windows support */
    filenameStart = extractFilename(filenameStart, '/');  /* sometimes, '/' separator is also used on Windows (mingw+msys2) */
#endif

    result = (char*) FUNC1(1, FUNC5(outDirName) + 1 + FUNC5(filenameStart) + suffixLen + 1);
    if (!result) {
        FUNC0(30, "zstd: FIO_createFilename_fromOutDir: %s", FUNC4(errno));
    }

    FUNC3(result, outDirName, FUNC5(outDirName));
    if (outDirName[FUNC5(outDirName)-1] == separator) {
        FUNC3(result + FUNC5(outDirName), filenameStart, FUNC5(filenameStart));
    } else {
        FUNC3(result + FUNC5(outDirName), &separator, 1);
        FUNC3(result + FUNC5(outDirName) + 1, filenameStart, FUNC5(filenameStart));
    }

    return result;
}