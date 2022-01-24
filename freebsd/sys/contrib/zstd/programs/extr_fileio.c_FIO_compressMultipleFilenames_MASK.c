#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * dstFile; } ;
typedef  TYPE_1__ cRess_t ;
typedef  int /*<<< orphan*/  ZSTD_compressionParameters ;
typedef  int /*<<< orphan*/  FIO_prefs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const**,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ * const,TYPE_1__,char const* const,char const* const,int) ; 
 TYPE_1__ FUNC3 (int /*<<< orphan*/ * const,char const*,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const* const,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(FIO_prefs_t* const prefs,
                                  const char** inFileNamesTable, unsigned nbFiles,
                                  const char* outDirName,
                                  const char* outFileName, const char* suffix,
                                  const char* dictFileName, int compressionLevel,
                                  ZSTD_compressionParameters comprParams)
{
    int error = 0;
    cRess_t ress = FUNC3(prefs, dictFileName, compressionLevel, comprParams);

    /* init */
    FUNC7(outFileName != NULL || suffix != NULL);
    if (outFileName != NULL) {   /* output into a single destination (stdout typically) */
        ress.dstFile = FUNC6(prefs, NULL, outFileName);
        if (ress.dstFile == NULL) {  /* could not open outFileName */
            error = 1;
        } else {
            unsigned u;
            for (u=0; u<nbFiles; u++)
                error |= FUNC2(prefs, ress, outFileName, inFileNamesTable[u], compressionLevel);
            if (FUNC8(ress.dstFile))
                FUNC0(29, "Write error (%s) : cannot properly close %s",
                            FUNC9(errno), outFileName);
            ress.dstFile = NULL;
        }
    } else {
        unsigned u;
        for (u=0; u<nbFiles; u++) {
            const char* const srcFileName = inFileNamesTable[u];
            const char* const dstFileName = FUNC4(srcFileName, outDirName, suffix);  /* cannot fail */
            error |= FUNC2(prefs, ress, dstFileName, srcFileName, compressionLevel);
        }
        if (outDirName)
            FUNC1(inFileNamesTable ,nbFiles);
    }

    FUNC5(ress);
    return error;
}