
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_3__ {int mergeinfo_count; int has_mergeinfo; } ;
typedef TYPE_1__ node_revision_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * svn_fs_base__dag_get_fs (int *) ;
 int * svn_fs_base__dag_get_id (int *) ;
 int svn_fs_bdb__get_node_revision (TYPE_1__**,int *,int const*,int *,int *) ;

svn_error_t *
svn_fs_base__dag_get_mergeinfo_stats(svn_boolean_t *has_mergeinfo,
                                     apr_int64_t *count,
                                     dag_node_t *node,
                                     trail_t *trail,
                                     apr_pool_t *pool)
{
  node_revision_t *node_rev;
  svn_fs_t *fs = svn_fs_base__dag_get_fs(node);
  const svn_fs_id_t *id = svn_fs_base__dag_get_id(node);

  SVN_ERR(svn_fs_bdb__get_node_revision(&node_rev, fs, id, trail, pool));
  if (has_mergeinfo)
    *has_mergeinfo = node_rev->has_mergeinfo;
  if (count)
    *count = node_rev->mergeinfo_count;
  return SVN_NO_ERROR;
}
