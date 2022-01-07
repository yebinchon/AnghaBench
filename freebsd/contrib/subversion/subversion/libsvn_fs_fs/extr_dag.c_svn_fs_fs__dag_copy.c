
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_14__ {int * copyroot_path; int copyfrom_rev; int copyfrom_path; int created_path; int predecessor_count; int predecessor_id; } ;
typedef TYPE_1__ node_revision_t ;
struct TYPE_15__ {int kind; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int apr_pstrdup (int *,char const*) ;
 TYPE_1__* copy_node_revision (TYPE_1__*,int *) ;
 int get_node_revision (TYPE_1__**,TYPE_2__*) ;
 int svn_fs_fs__create_successor (int const**,int *,int const*,TYPE_1__*,int *,int const*,int *) ;
 int svn_fs_fs__dag_get_created_path (TYPE_2__*) ;
 int * svn_fs_fs__dag_get_fs (TYPE_2__*) ;
 int * svn_fs_fs__dag_get_id (TYPE_2__*) ;
 int * svn_fs_fs__dag_set_entry (TYPE_2__*,char const*,int const*,int ,int const*,int *) ;
 int svn_fs_fs__id_copy (int const*,int *) ;
 int svn_fs_fs__reserve_copy_id (int *,int *,int const*,int *) ;
 int svn_fspath__join (int ,char const*,int *) ;

svn_error_t *
svn_fs_fs__dag_copy(dag_node_t *to_node,
                    const char *entry,
                    dag_node_t *from_node,
                    svn_boolean_t preserve_history,
                    svn_revnum_t from_rev,
                    const char *from_path,
                    const svn_fs_fs__id_part_t *txn_id,
                    apr_pool_t *pool)
{
  const svn_fs_id_t *id;

  if (preserve_history)
    {
      node_revision_t *from_noderev, *to_noderev;
      svn_fs_fs__id_part_t copy_id;
      const svn_fs_id_t *src_id = svn_fs_fs__dag_get_id(from_node);
      svn_fs_t *fs = svn_fs_fs__dag_get_fs(from_node);


      SVN_ERR(get_node_revision(&from_noderev, from_node));
      to_noderev = copy_node_revision(from_noderev, pool);


      SVN_ERR(svn_fs_fs__reserve_copy_id(&copy_id, fs, txn_id, pool));



      to_noderev->predecessor_id = svn_fs_fs__id_copy(src_id, pool);
      to_noderev->predecessor_count++;
      to_noderev->created_path =
        svn_fspath__join(svn_fs_fs__dag_get_created_path(to_node), entry,
                     pool);
      to_noderev->copyfrom_path = apr_pstrdup(pool, from_path);
      to_noderev->copyfrom_rev = from_rev;


      to_noderev->copyroot_path = ((void*)0);

      SVN_ERR(svn_fs_fs__create_successor(&id, fs, src_id, to_noderev,
                                          &copy_id, txn_id, pool));

    }
  else
    {
      id = svn_fs_fs__dag_get_id(from_node);
    }


  return svn_fs_fs__dag_set_entry(to_node, entry, id, from_node->kind,
                                  txn_id, pool);
}
