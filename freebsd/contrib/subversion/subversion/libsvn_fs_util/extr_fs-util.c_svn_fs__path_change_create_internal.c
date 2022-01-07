
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_fs_path_change_kind_t ;
struct TYPE_4__ {int copyfrom_rev; int mergeinfo_mod; int change_kind; int const* node_rev_id; } ;
typedef TYPE_1__ svn_fs_path_change2_t ;
typedef int svn_fs_id_t ;
typedef int apr_pool_t ;


 int SVN_INVALID_REVNUM ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_tristate_unknown ;

svn_fs_path_change2_t *
svn_fs__path_change_create_internal(const svn_fs_id_t *node_rev_id,
                                    svn_fs_path_change_kind_t change_kind,
                                    apr_pool_t *pool)
{
  svn_fs_path_change2_t *change;

  change = apr_pcalloc(pool, sizeof(*change));
  change->node_rev_id = node_rev_id;
  change->change_kind = change_kind;
  change->mergeinfo_mod = svn_tristate_unknown;
  change->copyfrom_rev = SVN_INVALID_REVNUM;

  return change;
}
