#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ dstFile; } ;
typedef  TYPE_1__ dRess_t ;
struct TYPE_11__ {int /*<<< orphan*/  testMode; } ;
typedef  TYPE_2__ FIO_prefs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const**,unsigned int) ; 
 TYPE_1__ FUNC2 (TYPE_2__* const,char const*) ; 
 int FUNC3 (TYPE_2__* const,TYPE_1__,char const* const,char const* const) ; 
 char* FUNC4 (char const* const,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__) ; 
 scalar_t__ FUNC6 (TYPE_2__* const,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 char const* FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(FIO_prefs_t* const prefs,
                                const char** srcNamesTable, unsigned nbFiles,
                                const char* outDirName, const char* outFileName,
                                const char* dictFileName)
{
    int error = 0;
    dRess_t ress = FUNC2(prefs, dictFileName);

    if (outFileName) {
        unsigned u;
        if (!prefs->testMode) {
            ress.dstFile = FUNC6(prefs, NULL, outFileName);
            if (ress.dstFile == 0) FUNC0(19, "cannot open %s", outFileName);
        }
        for (u=0; u<nbFiles; u++)
            error |= FUNC3(prefs, ress, outFileName, srcNamesTable[u]);
        if ((!prefs->testMode) && (FUNC7(ress.dstFile)))
            FUNC0(72, "Write error : %s : cannot properly close output file",
                        FUNC8(errno));
    } else {
        unsigned u;
        for (u=0; u<nbFiles; u++) {   /* create dstFileName */
            const char* const srcFileName = srcNamesTable[u];
            const char* const dstFileName = FUNC4(srcFileName, outDirName);
            if (dstFileName == NULL) { error=1; continue; }

            error |= FUNC3(prefs, ress, dstFileName, srcFileName);
        }
        if (outDirName)
            FUNC1(srcNamesTable ,nbFiles);
    }

    FUNC5(ress);
    return error;
}