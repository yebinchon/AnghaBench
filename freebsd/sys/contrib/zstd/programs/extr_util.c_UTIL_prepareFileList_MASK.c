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
struct dirent {char const* d_name; } ;
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int LIST_SIZE_INCREASE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,...) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC9 (char const*) ; 
 struct dirent* FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 size_t FUNC13 (char const*) ; 

int FUNC14(const char *dirName, char** bufStart, size_t* pos, char** bufEnd, int followLinks)
{
    DIR *dir;
    struct dirent *entry;
    char* path;
    size_t dirLength, fnameLength, pathLength;
    int nbFiles = 0;

    if (!(dir = FUNC9(dirName))) {
        FUNC0(1, "Cannot open directory '%s': %s\n", dirName, FUNC12(errno));
        return 0;
    }

    dirLength = FUNC13(dirName);
    errno = 0;
    while ((entry = FUNC10(dir)) != NULL) {
        if (FUNC11 (entry->d_name, "..") == 0 ||
            FUNC11 (entry->d_name, ".") == 0) continue;
        fnameLength = FUNC13(entry->d_name);
        path = (char*) FUNC7(dirLength + fnameLength + 2);
        if (!path) { FUNC5(dir); return 0; }
        FUNC8(path, dirName, dirLength);

        path[dirLength] = '/';
        FUNC8(path+dirLength+1, entry->d_name, fnameLength);
        pathLength = dirLength+1+fnameLength;
        path[pathLength] = 0;

        if (!followLinks && FUNC2(path)) {
            FUNC0(2, "Warning : %s is a symbolic link, ignoring\n", path);
            FUNC6(path);
            continue;
        }

        if (FUNC1(path)) {
            nbFiles += FUNC14(path, bufStart, pos, bufEnd, followLinks);  /* Recursively call "UTIL_prepareFileList" with the new path. */
            if (*bufStart == NULL) { FUNC6(path); FUNC5(dir); return 0; }
        } else {
            if (*bufStart + *pos + pathLength >= *bufEnd) {
                ptrdiff_t newListSize = (*bufEnd - *bufStart) + LIST_SIZE_INCREASE;
                FUNC4(newListSize >= 0);
                *bufStart = (char*)FUNC3(*bufStart, (size_t)newListSize);
                *bufEnd = *bufStart + newListSize;
                if (*bufStart == NULL) { FUNC6(path); FUNC5(dir); return 0; }
            }
            if (*bufStart + *pos + pathLength < *bufEnd) {
                FUNC8(*bufStart + *pos, path, pathLength + 1);  /* with final \0 */
                *pos += pathLength + 1;
                nbFiles++;
            }
        }
        FUNC6(path);
        errno = 0; /* clear errno after UTIL_isDirectory, UTIL_prepareFileList */
    }

    if (errno != 0) {
        FUNC0(1, "readdir(%s) error: %s\n", dirName, FUNC12(errno));
        FUNC6(*bufStart);
        *bufStart = NULL;
    }
    FUNC5(dir);
    return nbFiles;
}