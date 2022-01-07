
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * fs; } ;
typedef TYPE_1__ svn_repos_t ;
typedef int svn_fs_t ;



svn_fs_t *
svn_repos_fs(svn_repos_t *repos)
{
  if (! repos)
    return ((void*)0);
  return repos->fs;
}
