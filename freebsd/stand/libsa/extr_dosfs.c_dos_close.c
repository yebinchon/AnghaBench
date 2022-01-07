
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct open_file {scalar_t__ f_fsdata; } ;
struct TYPE_6__ {TYPE_1__* fs; } ;
struct TYPE_5__ {int links; } ;
typedef TYPE_1__ DOS_FS ;
typedef TYPE_2__ DOS_FILE ;


 int dos_unmount (TYPE_1__*) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static int
dos_close(struct open_file *fd)
{
    DOS_FILE *f = (DOS_FILE *)fd->f_fsdata;
    DOS_FS *fs = f->fs;

    f->fs->links--;
    free(f);
    dos_unmount(fs);
    return (0);
}
