
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_x__txn_id_t ;
struct TYPE_13__ {int noderev_id; int * copyroot_path; int copyfrom_rev; int copyfrom_path; int created_path; int predecessor_count; int predecessor_id; } ;
typedef TYPE_1__ svn_fs_x__noderev_t ;
typedef int svn_fs_x__id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_14__ {TYPE_11__* node_revision; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;
struct TYPE_12__ {int kind; } ;


 int SVN_ERR (int ) ;
 int apr_pstrdup (int *,char const*) ;
 TYPE_1__* copy_node_revision (TYPE_11__*,int *) ;
 int svn_fs_x__create_successor (int *,TYPE_1__*,int *,int ,int *) ;
 int svn_fs_x__dag_get_created_path (TYPE_2__*) ;
 int * svn_fs_x__dag_get_fs (TYPE_2__*) ;
 int * svn_fs_x__dag_get_id (TYPE_2__*) ;
 int * svn_fs_x__dag_set_entry (TYPE_2__*,char const*,int const*,int ,int ,int *) ;
 int svn_fs_x__reserve_copy_id (int *,int *,int ,int *) ;
 int svn_fspath__join (int ,char const*,int *) ;

svn_error_t *
svn_fs_x__dag_copy(dag_node_t *to_node,
                   const char *entry,
                   dag_node_t *from_node,
                   svn_boolean_t preserve_history,
                   svn_revnum_t from_rev,
                   const char *from_path,
                   svn_fs_x__txn_id_t txn_id,
                   apr_pool_t *scratch_pool)
{
  const svn_fs_x__id_t *id;

  if (preserve_history)
    {
      svn_fs_x__noderev_t *to_noderev;
      svn_fs_x__id_t copy_id;
      svn_fs_t *fs = svn_fs_x__dag_get_fs(from_node);


      to_noderev = copy_node_revision(from_node->node_revision, scratch_pool);


      SVN_ERR(svn_fs_x__reserve_copy_id(&copy_id, fs, txn_id, scratch_pool));



      to_noderev->predecessor_id = to_noderev->noderev_id;
      to_noderev->predecessor_count++;
      to_noderev->created_path =
        svn_fspath__join(svn_fs_x__dag_get_created_path(to_node), entry,
                         scratch_pool);
      to_noderev->copyfrom_path = apr_pstrdup(scratch_pool, from_path);
      to_noderev->copyfrom_rev = from_rev;


      to_noderev->copyroot_path = ((void*)0);

      SVN_ERR(svn_fs_x__create_successor(fs, to_noderev,
                                         &copy_id, txn_id, scratch_pool));
      id = &to_noderev->noderev_id;
    }
  else
    {
      id = svn_fs_x__dag_get_id(from_node);
    }


  return svn_fs_x__dag_set_entry(to_node, entry, id,
                                 from_node->node_revision->kind,
                                 txn_id, scratch_pool);
}
