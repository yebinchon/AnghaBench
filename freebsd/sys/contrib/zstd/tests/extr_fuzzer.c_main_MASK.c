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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUZ_compressibility_default ; 
 int FUNC1 (int,double,int) ; 
 int FUNC2 (char const* const) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  ZSTD_VERSION_STRING ; 
 int FUNC5 (int /*<<< orphan*/ ,double) ; 
 int FUNC6 (int,int,int,int,double,int) ; 
 int /*<<< orphan*/  g_displayLevel ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (char const**,char*) ; 
 int nbTestsDefault ; 
 int FUNC9 (char const**) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(int argc, const char** argv)
{
    U32 seed = 0;
    int seedset = 0;
    int argNb;
    int nbTests = nbTestsDefault;
    int testNb = 0;
    int proba = FUZ_compressibility_default;
    int result = 0;
    U32 mainPause = 0;
    U32 maxDuration = 0;
    int bigTests = 1;
    U32 memTestsOnly = 0;
    const char* const programName = argv[0];

    /* Check command line */
    for (argNb=1; argNb<argc; argNb++) {
        const char* argument = argv[argNb];
        if(!argument) continue;   /* Protection if argument empty */

        /* Handle commands. Aggregated commands are allowed */
        if (argument[0]=='-') {

            if (FUNC8(&argument, "--memtest=")) { memTestsOnly = FUNC9(&argument); continue; }

            if (!FUNC10(argument, "--memtest")) { memTestsOnly=1; continue; }
            if (!FUNC10(argument, "--no-big-tests")) { bigTests=0; continue; }

            argument++;
            while (*argument!=0) {
                switch(*argument)
                {
                case 'h':
                    return FUNC2(programName);

                case 'v':
                    argument++;
                    g_displayLevel++;
                    break;

                case 'q':
                    argument++;
                    g_displayLevel--;
                    break;

                case 'p': /* pause at the end */
                    argument++;
                    mainPause = 1;
                    break;

                case 'i':
                    argument++; maxDuration = 0;
                    nbTests = (int)FUNC9(&argument);
                    break;

                case 'T':
                    argument++;
                    nbTests = 0;
                    maxDuration = FUNC9(&argument);
                    if (*argument=='s') argument++;   /* seconds */
                    if (*argument=='m') maxDuration *= 60, argument++;   /* minutes */
                    if (*argument=='n') argument++;
                    break;

                case 's':
                    argument++;
                    seedset = 1;
                    seed = FUNC9(&argument);
                    break;

                case 't':
                    argument++;
                    testNb = (int)FUNC9(&argument);
                    break;

                case 'P':   /* compressibility % */
                    argument++;
                    proba = (int)FUNC9(&argument);
                    if (proba>100) proba = 100;
                    break;

                default:
                    return (FUNC2(programName), 1);
    }   }   }   }   /* for (argNb=1; argNb<argc; argNb++) */

    /* Get Seed */
    FUNC0("Starting zstd tester (%i-bits, %s)\n", (int)(sizeof(size_t)*8), ZSTD_VERSION_STRING);

    if (!seedset) {
        time_t const t = FUNC11(NULL);
        U32 const h = FUNC4(&t, sizeof(t), 1);
        seed = h % 10000;
    }

    FUNC0("Seed = %u\n", (unsigned)seed);
    if (proba!=FUZ_compressibility_default) FUNC0("Compressibility : %i%%\n", proba);

    if (memTestsOnly) {
        g_displayLevel = FUNC3(3, g_displayLevel);
        return FUNC1(seed, ((double)proba) / 100, memTestsOnly);
    }

    if (nbTests < testNb) nbTests = testNb;

    if (testNb==0)
        result = FUNC5(0, ((double)proba) / 100);  /* constant seed for predictability */
    if (!result)
        result = FUNC6(seed, nbTests, testNb, maxDuration, ((double)proba) / 100, bigTests);
    if (mainPause) {
        int unused;
        FUNC0("Press Enter \n");
        unused = FUNC7();
        (void)unused;
    }
    return result;
}