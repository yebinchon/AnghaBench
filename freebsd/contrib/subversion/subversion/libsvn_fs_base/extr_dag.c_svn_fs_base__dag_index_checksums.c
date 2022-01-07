
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct TYPE_10__ {scalar_t__ kind; scalar_t__ prop_key; scalar_t__ data_key; } ;
typedef TYPE_2__ node_revision_t ;
struct TYPE_11__ {int id; } ;
typedef TYPE_3__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int maybe_store_checksum_rep (scalar_t__,TYPE_1__*,int *) ;
 int svn_fs_bdb__get_node_revision (TYPE_2__**,int ,int ,TYPE_1__*,int *) ;
 scalar_t__ svn_node_file ;

svn_error_t *
svn_fs_base__dag_index_checksums(dag_node_t *node,
                                 trail_t *trail,
                                 apr_pool_t *pool)
{
  node_revision_t *node_rev;

  SVN_ERR(svn_fs_bdb__get_node_revision(&node_rev, trail->fs, node->id,
                                        trail, pool));
  if ((node_rev->kind == svn_node_file) && node_rev->data_key)
    SVN_ERR(maybe_store_checksum_rep(node_rev->data_key, trail, pool));
  if (node_rev->prop_key)
    SVN_ERR(maybe_store_checksum_rep(node_rev->prop_key, trail, pool));

  return SVN_NO_ERROR;
}
