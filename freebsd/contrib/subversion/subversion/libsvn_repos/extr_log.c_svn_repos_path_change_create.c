
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* data; } ;
struct TYPE_6__ {int copyfrom_rev; int mergeinfo_mod; int change_kind; TYPE_1__ path; } ;
typedef TYPE_2__ svn_repos_path_change_t ;
typedef int apr_pool_t ;


 int SVN_INVALID_REVNUM ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int svn_fs_path_change_reset ;
 int svn_tristate_unknown ;

svn_repos_path_change_t *
svn_repos_path_change_create(apr_pool_t *result_pool)
{
  svn_repos_path_change_t *change = apr_pcalloc(result_pool, sizeof(*change));

  change->path.data = "";
  change->change_kind = svn_fs_path_change_reset;
  change->mergeinfo_mod = svn_tristate_unknown;
  change->copyfrom_rev = SVN_INVALID_REVNUM;

  return change;
}
