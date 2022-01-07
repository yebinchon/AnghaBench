
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_t ;
struct TYPE_3__ {int * fs; } ;
typedef TYPE_1__ svn_fs_root_t ;



svn_fs_t *
svn_fs_root_fs(svn_fs_root_t *root)
{
  return root->fs;
}
