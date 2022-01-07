
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_9__ {int mergeinfo_count; scalar_t__ has_mergeinfo; } ;
typedef TYPE_2__ node_revision_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int SVN_FS_BASE__MIN_MERGEINFO_FORMAT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ) ;
 int svn_fs_base__dag_check_mutable (int *,char const*) ;
 int * svn_fs_base__dag_get_fs (int *) ;
 int * svn_fs_base__dag_get_id (int *) ;
 int svn_fs_base__test_required_feature_format (int ,char*,int ) ;
 int svn_fs_bdb__get_node_revision (TYPE_2__**,int *,int const*,TYPE_1__*,int *) ;
 int svn_fs_bdb__put_node_revision (int *,int const*,TYPE_2__*,TYPE_1__*,int *) ;

svn_error_t *
svn_fs_base__dag_set_has_mergeinfo(dag_node_t *node,
                                   svn_boolean_t has_mergeinfo,
                                   svn_boolean_t *had_mergeinfo,
                                   const char *txn_id,
                                   trail_t *trail,
                                   apr_pool_t *pool)
{
  node_revision_t *node_rev;
  svn_fs_t *fs = svn_fs_base__dag_get_fs(node);
  const svn_fs_id_t *id = svn_fs_base__dag_get_id(node);

  SVN_ERR(svn_fs_base__test_required_feature_format
          (trail->fs, "mergeinfo", SVN_FS_BASE__MIN_MERGEINFO_FORMAT));

  if (! svn_fs_base__dag_check_mutable(node, txn_id))
    return svn_error_createf(SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
                             _("Attempted merge tracking info change on "
                               "immutable node"));

  SVN_ERR(svn_fs_bdb__get_node_revision(&node_rev, fs, id, trail, pool));
  *had_mergeinfo = node_rev->has_mergeinfo;


  if ((! has_mergeinfo) != (! *had_mergeinfo))
    {

      node_rev->has_mergeinfo = has_mergeinfo;


      if (has_mergeinfo)
        node_rev->mergeinfo_count++;
      else
        node_rev->mergeinfo_count--;

      SVN_ERR(svn_fs_bdb__put_node_revision(fs, id, node_rev, trail, pool));
    }
  return SVN_NO_ERROR;
}
