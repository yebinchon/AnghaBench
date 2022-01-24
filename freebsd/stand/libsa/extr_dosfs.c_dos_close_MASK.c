#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct open_file {scalar_t__ f_fsdata; } ;
struct TYPE_6__ {TYPE_1__* fs; } ;
struct TYPE_5__ {int /*<<< orphan*/  links; } ;
typedef  TYPE_1__ DOS_FS ;
typedef  TYPE_2__ DOS_FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC2(struct open_file *fd)
{
    DOS_FILE *f = (DOS_FILE *)fd->f_fsdata;
    DOS_FS *fs = f->fs;

    f->fs->links--;
    FUNC1(f);
    FUNC0(fs);
    return (0);
}