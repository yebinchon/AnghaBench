#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct open_file {void* f_fsdata; } ;
struct TYPE_14__ {int attr; int /*<<< orphan*/  size; } ;
struct TYPE_13__ {TYPE_3__ de; TYPE_1__* fs; } ;
struct TYPE_12__ {int /*<<< orphan*/  links; int /*<<< orphan*/  fatsz; } ;
typedef  TYPE_1__ DOS_FS ;
typedef  TYPE_2__ DOS_FILE ;
typedef  TYPE_3__ DOS_DE ;

/* Variables and functions */
 int EINVAL ; 
 int FA_DIR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,struct open_file*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 void* FUNC5 (int) ; 
 int FUNC6 (TYPE_1__*,char const*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static int
FUNC9(const char *path, struct open_file *fd)
{
    DOS_DE *de;
    DOS_FILE *f;
    DOS_FS *fs;
    u_int size, clus;
    int err;

    /* Allocate mount structure, associate with open */
    if ((fs = FUNC5(sizeof(DOS_FS))) == NULL)
        return (errno);
    if ((err = FUNC2(fs, fd))) {
        FUNC4(fs);
        return (err);
    }

    if ((err = FUNC6(fs, path, &de))) {
        FUNC3(fs);
        return (err);
    }

    clus = FUNC8(fs->fatsz, de);
    size = FUNC1(de->size);

    if ((!(de->attr & FA_DIR) && (!clus != !size)) ||
	((de->attr & FA_DIR) && size) ||
	(clus && !FUNC7(fs, clus))) {
        FUNC3(fs);
        return (EINVAL);
    }
    if ((f = FUNC5(sizeof(DOS_FILE))) == NULL) {
        err = errno;
        FUNC3(fs);
        return (err);
    }
    FUNC0(f, sizeof(DOS_FILE));
    f->fs = fs;
    fs->links++;
    f->de = *de;
    fd->f_fsdata = (void *)f;
    return (0);
}