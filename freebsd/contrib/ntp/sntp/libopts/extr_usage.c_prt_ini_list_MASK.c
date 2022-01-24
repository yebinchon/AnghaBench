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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  pth_buf ;

/* Variables and functions */
 int /*<<< orphan*/  AG_PATH_MAX ; 
 int /*<<< orphan*/  DIRCH ; 
 int /*<<< orphan*/  NL ; 
 char const NUL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char const*,char const*) ; 
 int /*<<< orphan*/  option_usage_fp ; 
 scalar_t__ FUNC5 (char const*,struct stat*) ; 
 char* zPathFmt ; 
 char const* zPresetIntro ; 

__attribute__((used)) static void
FUNC6(char const * const * papz, char const * ini_file,
             char const * path_nm)
{
    char pth_buf[AG_PATH_MAX+1];

    FUNC3(zPresetIntro, option_usage_fp);

    for (;;) {
        char const * path   = *(papz++);
        char const * nm_buf = pth_buf;

        if (path == NULL)
            break;

        /*
         * Ignore any invalid paths
         */
        if (! FUNC4(pth_buf, (int)sizeof(pth_buf), path, path_nm))
            nm_buf = path;

        /*
         * Expand paths that are relative to the executable or installation
         * directories.  Leave alone paths that use environment variables.
         */
        else if ((*path == '$')
                 && ((path[1] == '$') || (path[1] == '@')))
            path = nm_buf;

        /*
         *  Print the name of the "homerc" file.  If the "rcfile" name is
         *  not empty, we may or may not print that, too...
         */
        FUNC1(option_usage_fp, zPathFmt, path);
        if (*ini_file != NUL) {
            struct stat sb;

            /*
             *  IF the "homerc" file is a directory,
             *  then append the "rcfile" name.
             */
            if ((FUNC5(nm_buf, &sb) == 0) && FUNC0(sb.st_mode)) {
                FUNC2(DIRCH,    option_usage_fp);
                FUNC3(ini_file, option_usage_fp);
            }
        }

        FUNC2(NL, option_usage_fp);
    }
}