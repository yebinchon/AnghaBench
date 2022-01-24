#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t save_opts; } ;
struct TYPE_9__ {char** papzHomeList; char const* pzProgName; TYPE_3__ specOptIdx; TYPE_2__* pOptDesc; } ;
typedef  TYPE_4__ tOptions ;
struct TYPE_6__ {char* argString; } ;
struct TYPE_7__ {TYPE_1__ optArg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t,char*) ; 
 int AO_NAME_LIMIT ; 
 int AO_NAME_SIZE ; 
 int /*<<< orphan*/  DIRCH ; 
 size_t NO_EQUIVALENT ; 
 char const NUL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*) ; 
 char* zNotDef ; 
 char* zsave_warn ; 

__attribute__((used)) static char const *
FUNC7(tOptions * opts, int * p_free)
{
    char const * pzDir;

    if (  (opts->specOptIdx.save_opts == NO_EQUIVALENT)
       || (opts->specOptIdx.save_opts == 0))
        return NULL;

    pzDir = opts->pOptDesc[ opts->specOptIdx.save_opts ].optArg.argString;
    if ((pzDir != NULL) && (*pzDir != NUL))
        return pzDir;

    /*
     *  This function only works if there is a directory where
     *  we can stash the RC (INI) file.
     */
    {
        char const * const * papz = opts->papzHomeList;
        if (papz == NULL)
            return NULL;

        while (papz[1] != NULL) papz++;
        pzDir = *papz;
    }

    /*
     *  IF it does not require deciphering an env value, then just copy it
     */
    if (*pzDir != '$')
        return pzDir;

    {
        char const * pzEndDir = FUNC5(++pzDir, DIRCH);
        char * pzFileName;
        char * pzEnv;

        if (pzEndDir != NULL) {
            char z[ AO_NAME_SIZE ];
            if ((pzEndDir - pzDir) > AO_NAME_LIMIT )
                return NULL;
            FUNC3(z, pzDir, (size_t)(pzEndDir - pzDir));
            z[pzEndDir - pzDir] = NUL;
            pzEnv = FUNC2(z);
        } else {

            /*
             *  Make sure we can get the env value (after stripping off
             *  any trailing directory or file names)
             */
            pzEnv = FUNC2(pzDir);
        }

        if (pzEnv == NULL) {
            FUNC1(stderr, zsave_warn, opts->pzProgName);
            FUNC1(stderr, zNotDef, pzDir);
            return NULL;
        }

        if (pzEndDir == NULL)
            return pzEnv;

        {
            size_t sz = FUNC6(pzEnv) + FUNC6(pzEndDir) + 2;
            pzFileName = (char *)FUNC0(sz, "dir name");
        }

        if (pzFileName == NULL)
            return NULL;

        *p_free = 1;
        /*
         *  Glue together the full name into the allocated memory.
         *  FIXME: We lose track of this memory.
         */
        FUNC4(pzFileName, "%s/%s", pzEnv, pzEndDir);
        return pzFileName;
    }
}