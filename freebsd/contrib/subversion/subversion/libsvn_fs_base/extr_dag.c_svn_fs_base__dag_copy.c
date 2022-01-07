
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_11__ {int predecessor_count; int created_path; int predecessor_id; } ;
typedef TYPE_1__ node_revision_t ;
struct TYPE_12__ {int id; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int copy_kind_real ;
 int svn_fs__canonicalize_abspath (char const*,int *) ;
 int svn_fs_base__add_txn_copy (int *,char const*,char const*,int *,int *) ;
 int svn_fs_base__create_successor (int const**,int *,int const*,TYPE_1__*,char const*,char const*,int *,int *) ;
 int svn_fs_base__dag_get_created_path (TYPE_2__*) ;
 int * svn_fs_base__dag_get_fs (TYPE_2__*) ;
 int * svn_fs_base__dag_get_id (TYPE_2__*) ;
 int * svn_fs_base__dag_set_entry (TYPE_2__*,char const*,int const*,char const*,int *,int *) ;
 int svn_fs_base__id_copy (int const*,int *) ;
 int svn_fs_base__rev_get_txn_id (char const**,int *,int ,int *,int *) ;
 int svn_fs_bdb__create_copy (int *,char const*,int ,char const*,int const*,int ,int *,int *) ;
 int svn_fs_bdb__get_node_revision (TYPE_1__**,int *,int ,int *,int *) ;
 int svn_fs_bdb__reserve_copy_id (char const**,int *,int *,int *) ;
 int svn_fspath__join (int ,char const*,int *) ;

svn_error_t *
svn_fs_base__dag_copy(dag_node_t *to_node,
                      const char *entry,
                      dag_node_t *from_node,
                      svn_boolean_t preserve_history,
                      svn_revnum_t from_rev,
                      const char *from_path,
                      const char *txn_id,
                      trail_t *trail,
                      apr_pool_t *pool)
{
  const svn_fs_id_t *id;

  if (preserve_history)
    {
      node_revision_t *noderev;
      const char *copy_id;
      svn_fs_t *fs = svn_fs_base__dag_get_fs(from_node);
      const svn_fs_id_t *src_id = svn_fs_base__dag_get_id(from_node);
      const char *from_txn_id = ((void*)0);


      SVN_ERR(svn_fs_bdb__get_node_revision(&noderev, fs, from_node->id,
                                            trail, pool));


      SVN_ERR(svn_fs_bdb__reserve_copy_id(&copy_id, fs, trail, pool));



      noderev->predecessor_id = svn_fs_base__id_copy(src_id, pool);
      if (noderev->predecessor_count != -1)
        noderev->predecessor_count++;
      noderev->created_path = svn_fspath__join
        (svn_fs_base__dag_get_created_path(to_node), entry, pool);
      SVN_ERR(svn_fs_base__create_successor(&id, fs, src_id, noderev,
                                            copy_id, txn_id, trail, pool));


      SVN_ERR(svn_fs_base__rev_get_txn_id(&from_txn_id, fs, from_rev,
                                          trail, pool));




      SVN_ERR(svn_fs_bdb__create_copy
              (fs, copy_id,
               svn_fs__canonicalize_abspath(from_path, pool),
               from_txn_id, id, copy_kind_real, trail, pool));




      SVN_ERR(svn_fs_base__add_txn_copy(fs, txn_id, copy_id, trail, pool));
    }
  else
    {
      id = svn_fs_base__dag_get_id(from_node);
    }


  return svn_fs_base__dag_set_entry(to_node, entry, id, txn_id,
                                    trail, pool);
}
