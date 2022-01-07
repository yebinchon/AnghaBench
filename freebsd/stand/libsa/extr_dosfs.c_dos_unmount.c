
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* fatbuf; scalar_t__ links; } ;
typedef TYPE_1__ DOS_FS ;


 int EBUSY ;
 int free (TYPE_1__*) ;

__attribute__((used)) static int
dos_unmount(DOS_FS *fs)
{
    if (fs->links)
        return (EBUSY);
    free(fs->fatbuf);
    free(fs);
    return (0);
}
