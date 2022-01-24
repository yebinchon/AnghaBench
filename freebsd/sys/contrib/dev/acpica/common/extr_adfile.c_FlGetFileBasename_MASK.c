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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (char*,char) ; 

char *
FUNC4 (
    char                    *FilePathname)
{
    char                    *FileBasename;
    char                    *Substring;


    /* Backup to last slash or colon */

    Substring = FUNC3 (FilePathname, '/');
    if (!Substring)
    {
        Substring = FUNC3 (FilePathname, ':');
    }

    /* Extract the full filename (base + extension) */

    if (Substring)
    {
        FileBasename = FUNC1 (Substring + 1);
    }
    else
    {
        FileBasename = FUNC1 (FilePathname);
    }

    /* Remove the filename extension if present */

    Substring = FUNC2 (FileBasename, '.');
    if (Substring)
    {
        *Substring = 0;
    }

    FUNC0 (FileBasename);
    return (FileBasename);
}