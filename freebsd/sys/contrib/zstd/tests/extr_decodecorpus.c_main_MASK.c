#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  genType_e ;
typedef  int U32 ;
struct TYPE_2__ {int contentSize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MAX_DECOMPRESSED_SIZE_LOG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int ZSTD_BLOCKSIZE_MAX ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  g_displayLevel ; 
 unsigned int g_maxBlockSize ; 
 int /*<<< orphan*/  g_maxDecompressedSizeLog ; 
 int FUNC3 (int,unsigned int,char const*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,unsigned int,char const*,char const*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gt_block ; 
 int /*<<< orphan*/  gt_frame ; 
 int /*<<< orphan*/  FUNC6 (char const**,char*) ; 
 int FUNC7 () ; 
 TYPE_1__ opts ; 
 void* FUNC8 (char const**) ; 
 void* FUNC9 (char const**) ; 
 int FUNC10 (int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

int FUNC14(int argc, char** argv)
{
    U32 seed = 0;
    int seedset = 0;
    unsigned numFiles = 0;
    unsigned testDuration = 0;
    int testMode = 0;
    const char* path = NULL;
    const char* origPath = NULL;
    int useDict = 0;
    unsigned dictSize = (10 << 10); /* 10 kB default */
    genType_e genType = gt_frame;

    int argNb;

    /* Check command line */
    for (argNb=1; argNb<argc; argNb++) {
        const char* argument = argv[argNb];
        if(!argument) continue;   /* Protection if argument empty */

        /* Handle commands. Aggregated commands are allowed */
        if (argument[0]=='-') {
            argument++;
            while (*argument!=0) {
                switch(*argument)
                {
                case 'h':
                    FUNC13(argv[0]);
                    return 0;
                case 'H':
                    FUNC2(argv[0]);
                    return 0;
                case 'v':
                    argument++;
                    g_displayLevel++;
                    break;
                case 's':
                    argument++;
                    seedset=1;
                    seed = FUNC8(&argument);
                    break;
                case 'n':
                    argument++;
                    numFiles = FUNC8(&argument);
                    break;
                case 'T':
                    argument++;
                    testDuration = FUNC8(&argument);
                    if (*argument == 'm') {
                        testDuration *= 60;
                        argument++;
                        if (*argument == 'n') argument++;
                    }
                    break;
                case 'o':
                    argument++;
                    origPath = argument;
                    argument += FUNC12(argument);
                    break;
                case 'p':
                    argument++;
                    path = argument;
                    argument += FUNC12(argument);
                    break;
                case 't':
                    argument++;
                    testMode = 1;
                    break;
                case '-':
                    argument++;
                    if (FUNC11(argument, "content-size") == 0) {
                        opts.contentSize = 1;
                    } else if (FUNC6(&argument, "use-dict=")) {
                        dictSize = FUNC9(&argument);
                        useDict = 1;
                    } else if (FUNC11(argument, "gen-blocks") == 0) {
                        genType = gt_block;
                    } else if (FUNC6(&argument, "max-block-size-log=")) {
                        U32 value = FUNC9(&argument);
                        if (value >= 2 && value <= ZSTD_BLOCKSIZE_MAX) {
                            g_maxBlockSize = 1U << value;
                        }
                    } else if (FUNC6(&argument, "max-content-size-log=")) {
                        U32 value = FUNC9(&argument);
                        g_maxDecompressedSizeLog =
                                FUNC1(MAX_DECOMPRESSED_SIZE_LOG, value);
                    } else {
                        FUNC2(argv[0]);
                        return 1;
                    }
                    argument += FUNC12(argument);
                    break;
                default:
                    FUNC13(argv[0]);
                    return 1;
    }   }   }   }   /* for (argNb=1; argNb<argc; argNb++) */

    if (!seedset) {
        seed = FUNC7();
    }

    if (testMode) {
        return FUNC10(seed, numFiles, testDuration, genType);
    } else {
        if (testDuration) {
            FUNC0("Error: -T requires test mode (-t)\n\n");
            FUNC13(argv[0]);
            return 1;
        }
    }

    if (!path) {
        FUNC0("Error: path is required in file generation mode\n");
        FUNC13(argv[0]);
        return 1;
    }

    if (numFiles == 0 && useDict == 0) {
        return FUNC5(seed, path, origPath, genType);
    } else if (useDict == 0){
        return FUNC3(seed, numFiles, path, origPath, genType);
    } else {
        /* should generate files with a dictionary */
        return FUNC4(seed, numFiles, path, origPath, dictSize, genType);
    }

}