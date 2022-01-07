
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fs_ncg; } ;
struct uufsd {scalar_t__ d_ccg; TYPE_1__ d_fs; } ;


 int cgread1 (struct uufsd*,int ) ;

int
cgread(struct uufsd *disk)
{

 if (disk->d_ccg >= disk->d_fs.fs_ncg)
  return (0);
 return (cgread1(disk, disk->d_ccg++));
}
