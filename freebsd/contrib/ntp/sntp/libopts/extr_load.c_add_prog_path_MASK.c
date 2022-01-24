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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
#define  DIRCH 129 
#define  NUL 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int const) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 unsigned int FUNC6 (char const*) ; 
 char* FUNC7 (char const*,int const) ; 

__attribute__((used)) static bool
FUNC8(char * buf, int b_sz, char const * fname, char const * prg_path)
{
    char const *   path;
    char const *   pz;
    int     skip = 2;

    switch (fname[2]) {
    case DIRCH:
        skip = 3;
    case NUL:
        break;
    default:
        return false;
    }

    /*
     *  See if the path is included in the program name.
     *  If it is, we're done.  Otherwise, we have to hunt
     *  for the program using "pathfind".
     */
    if (FUNC4(prg_path, DIRCH) != NULL)
        path = prg_path;
    else {
        path = FUNC3(FUNC1("PATH"), prg_path, "rx");

        if (path == NULL)
            return false;
    }

    pz = FUNC7(path, DIRCH);

    /*
     *  IF we cannot find a directory name separator,
     *  THEN we do not have a path name to our executable file.
     */
    if (pz == NULL)
        return false;

    fname += skip;

    /*
     *  Concatenate the file name to the end of the executable path.
     *  The result may be either a file or a directory.
     */
    if ((unsigned)(pz - path) + 1 + FUNC6(fname) >= (unsigned)b_sz)
        return false;

    FUNC2(buf, path, (size_t)((pz - path)+1));
    FUNC5(buf + (pz - path) + 1, fname);

    /*
     *  If the "path" path was gotten from "pathfind()", then it was
     *  allocated and we need to deallocate it.
     */
    if (path != prg_path)
        FUNC0(path);
    return true;
}