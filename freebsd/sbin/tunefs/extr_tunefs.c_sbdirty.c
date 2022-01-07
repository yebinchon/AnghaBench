
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs_flags; scalar_t__ fs_clean; } ;
struct TYPE_4__ {TYPE_1__ d_fs; } ;


 int FS_NEEDSFSCK ;
 int FS_UNCLEAN ;
 TYPE_2__ disk ;

__attribute__((used)) static void
sbdirty(void)
{
 disk.d_fs.fs_flags |= FS_UNCLEAN | FS_NEEDSFSCK;
 disk.d_fs.fs_clean = 0;
}
