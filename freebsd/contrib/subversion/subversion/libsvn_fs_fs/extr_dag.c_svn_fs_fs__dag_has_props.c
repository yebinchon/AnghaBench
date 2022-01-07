
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_9__ {TYPE_1__* prop_rep; } ;
typedef TYPE_2__ node_revision_t ;
struct TYPE_10__ {int fs; } ;
typedef TYPE_3__ dag_node_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_8__ {int expanded_size; int txn_id; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_count (int *) ;
 int get_node_revision (TYPE_2__**,TYPE_3__*) ;
 int svn_fs_fs__get_proplist (int **,int ,TYPE_2__*,int *) ;
 scalar_t__ svn_fs_fs__id_txn_used (int *) ;

svn_error_t *
svn_fs_fs__dag_has_props(svn_boolean_t *has_props,
                         dag_node_t *node,
                         apr_pool_t *scratch_pool)
{
  node_revision_t *noderev;

  SVN_ERR(get_node_revision(&noderev, node));

  if (! noderev->prop_rep)
    {
      *has_props = FALSE;
      return SVN_NO_ERROR;
    }

  if (svn_fs_fs__id_txn_used(&noderev->prop_rep->txn_id))
    {

      apr_hash_t *proplist;

      SVN_ERR(svn_fs_fs__get_proplist(&proplist, node->fs,
                                      noderev, scratch_pool));

      *has_props = proplist ? (0 < apr_hash_count(proplist)) : FALSE;
    }
  else
    {


      *has_props = noderev->prop_rep->expanded_size > 4;
    }

  return SVN_NO_ERROR;
}
