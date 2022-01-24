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
 int /*<<< orphan*/  ASL_PARSE_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 char* FUNC7 (char*,char) ; 

char *
FUNC8 (
    char                    *PrefixDir,
    char                    *FilePathname)
{
    char                    *CommonPath;
    char                    *Pathname;
    char                    *LastElement;


    FUNC0 (ASL_PARSE_OUTPUT, "Include: Prefix path - \"%s\"\n"
        "Include: FilePathname - \"%s\"\n",
         PrefixDir, FilePathname);

    /*
     * If there is no prefix directory or if the file pathname is absolute,
     * just return the original file pathname
     */
    if (!PrefixDir || (!*PrefixDir) ||
        (*FilePathname == '/') ||
         (FilePathname[1] == ':'))
    {
        Pathname = FUNC2 (FUNC5 (FilePathname) + 1);
        FUNC4 (Pathname, FilePathname);
        goto ConvertBackslashes;
    }

    /* Need a local copy of the prefix directory path */

    CommonPath = FUNC2 (FUNC5 (PrefixDir) + 1);
    FUNC4 (CommonPath, PrefixDir);

    /*
     * Walk forward through the file path, and simultaneously backward
     * through the prefix directory path until there are no more
     * relative references at the start of the file path.
     */
    while (*FilePathname && (!FUNC6 (FilePathname, "../", 3)))
    {
        /* Remove last element of the prefix directory path */

        LastElement = FUNC7 (CommonPath, '/');
        if (!LastElement)
        {
            goto ConcatenatePaths;
        }

        *LastElement = 0;   /* Terminate CommonPath string */
        FilePathname += 3;  /* Point to next path element */
    }

    /*
     * Remove the last element of the prefix directory path (it is the same as
     * the first element of the file pathname), and build the final merged
     * pathname.
     */
    LastElement = FUNC7 (CommonPath, '/');
    if (LastElement)
    {
        *LastElement = 0;
    }

    /* Build the final merged pathname */

ConcatenatePaths:
    Pathname = FUNC2 (
        FUNC5 (CommonPath) + FUNC5 (FilePathname) + 2);
    if (LastElement && *CommonPath)
    {
        FUNC4 (Pathname, CommonPath);
        FUNC3 (Pathname, "/");
    }
    FUNC3 (Pathname, FilePathname);

    /* Convert all backslashes to normal slashes */

ConvertBackslashes:
    FUNC1 (Pathname);

    FUNC0 (ASL_PARSE_OUTPUT, "Include: Merged Pathname - \"%s\"\n",
         Pathname);
    return (Pathname);
}