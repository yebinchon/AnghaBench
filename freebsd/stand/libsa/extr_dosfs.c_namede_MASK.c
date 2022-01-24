#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int attr; } ;
struct TYPE_8__ {int /*<<< orphan*/  fatsz; TYPE_2__ root; } ;
typedef  TYPE_1__ DOS_FS ;
typedef  TYPE_2__ DOS_DE ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int ENOTDIR ; 
 int FA_DIR ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static int
FUNC4(DOS_FS *fs, const char *path, DOS_DE **dep)
{
    char name[256];
    DOS_DE *de;
    char *s;
    size_t n;
    int err;

    err = 0;
    de = &fs->root;
    while (*path) {
        while (*path == '/')
            path++;
        if (*path == '\0')
            break;
        if (!(s = FUNC3(path, '/')))
            s = FUNC3(path, 0);
        if ((n = s - path) > 255)
            return (ENAMETOOLONG);
        FUNC1(name, path, n);
        name[n] = 0;
        path = s;
        if (!(de->attr & FA_DIR))
            return (ENOTDIR);
        if ((err = FUNC0(fs, FUNC2(fs->fatsz, de), name, &de)))
            return (err);
    }
    *dep = de;
    return (0);
}