#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  z ;
struct TYPE_4__ {char const* pzRcName; int /*<<< orphan*/  pzProgName; } ;
typedef  TYPE_1__ tOptions ;
struct stat {void* st_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int AG_PATH_MAX ; 
 int /*<<< orphan*/  DIRCH ; 
 scalar_t__ ENOENT ; 
 char NUL ; 
 void* S_IFREG ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ errno ; 
 char* FUNC4 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char const*,char*) ; 
 scalar_t__ FUNC9 (char const*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int FUNC11 (char const*) ; 
 char* FUNC12 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 char* zNoStat ; 
 char* zsave_warn ; 

__attribute__((used)) static char const *
FUNC14(tOptions * opts, int * p_free_name)
{
    struct stat stBuf;
    int    free_dir_name = 0;

    char const * pzDir = FUNC4(opts, &free_dir_name);
    if (pzDir == NULL)
        return NULL;

    /*
     *  See if we can find the specified directory.  We use a once-only loop
     *  structure so we can bail out early.
     */
    if (FUNC9(pzDir, &stBuf) != 0) do {
        char z[AG_PATH_MAX];
        char * dirchp;

        /*
         *  IF we could not, check to see if we got a full
         *  path to a file name that has not been created yet.
         */
        if (errno != ENOENT) {
        bogus_name:
            FUNC5(stderr, zsave_warn, opts->pzProgName);
            FUNC5(stderr, zNoStat, errno, FUNC10(errno), pzDir);
            if (free_dir_name)
                FUNC1(pzDir);
            return NULL;
        }

        /*
         *  Strip off the last component, stat the remaining string and
         *  that string must name a directory
         */
        dirchp = FUNC12(pzDir, DIRCH);
        if (dirchp == NULL) {
            stBuf.st_mode = S_IFREG;
            break; /* found directory -- viz.,  "." */
        }

        if ((size_t)(dirchp - pzDir) >= sizeof(z))
            goto bogus_name;

        FUNC6(z, pzDir, (size_t)(dirchp - pzDir));
        z[dirchp - pzDir] = NUL;

        if ((FUNC9(z, &stBuf) != 0) || ! FUNC2(stBuf.st_mode))
            goto bogus_name;
        stBuf.st_mode = S_IFREG; /* file within this directory */
    } while (false);

    /*
     *  IF what we found was a directory,
     *  THEN tack on the config file name
     */
    if (FUNC2(stBuf.st_mode)) {
        size_t sz = FUNC11(pzDir) + FUNC11(opts->pzRcName) + 2;

        {
            char * pzPath = (char *)FUNC0(sz, "file name");
#ifdef HAVE_SNPRINTF
            snprintf(pzPath, sz, "%s/%s", pzDir, opts->pzRcName);
#else
            FUNC8(pzPath, "%s/%s", pzDir, opts->pzRcName);
#endif
            if (free_dir_name)
                FUNC1(pzDir);
            pzDir = pzPath;
            free_dir_name = 1;
        }

        /*
         *  IF we cannot stat the object for any reason other than
         *     it does not exist, then we bail out
         */
        if (FUNC9(pzDir, &stBuf) != 0) {
            if (errno != ENOENT) {
                FUNC5(stderr, zsave_warn, opts->pzProgName);
                FUNC5(stderr, zNoStat, errno, FUNC10(errno),
                        pzDir);
                FUNC1(pzDir);
                return NULL;
            }

            /*
             *  It does not exist yet, but it will be a regular file
             */
            stBuf.st_mode = S_IFREG;
        }
    }

    /*
     *  Make sure that whatever we ultimately found, that it either is
     *  or will soon be a file.
     */
    if (! FUNC3(stBuf.st_mode)) {
        FUNC5(stderr, zsave_warn, opts->pzProgName, pzDir);
        if (free_dir_name)
            FUNC1(pzDir);
        return NULL;
    }

    /*
     *  Get rid of the old file
     */
    FUNC13(pzDir);
    *p_free_name = free_dir_name;
    return pzDir;
}