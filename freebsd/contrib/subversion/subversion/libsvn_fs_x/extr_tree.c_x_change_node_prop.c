
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_fs_x__txn_id_t ;
struct TYPE_11__ {int node; } ;
typedef TYPE_1__ svn_fs_x__dag_path_t ;
struct TYPE_12__ {int txn_flags; int fs; int is_txn_root; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_hash_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_FS_TXN_CHECK_LOCKS ;
 int * SVN_FS__NOT_TXN (TYPE_2__*) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 scalar_t__ TRUE ;
 int add_change (int ,int ,char const*,int ,scalar_t__,scalar_t__,scalar_t__,int ,int ,int *,int *) ;
 int * apr_hash_make (int *) ;
 int increment_mergeinfo_up_tree (TYPE_1__*,int,int *) ;
 scalar_t__ strcmp (char const*,int ) ;
 int svn_fs_path_change_modify ;
 int svn_fs_x__allow_locked_operation (char const*,int ,scalar_t__,scalar_t__,int *) ;
 int svn_fs_x__dag_get_proplist (int **,int ,int *,int *) ;
 scalar_t__ svn_fs_x__dag_has_mergeinfo (int ) ;
 int svn_fs_x__dag_node_kind (int ) ;
 int svn_fs_x__dag_set_has_mergeinfo (int ,int ,int *) ;
 int svn_fs_x__dag_set_proplist (int ,int *,int *) ;
 int svn_fs_x__get_dag_path (TYPE_1__**,TYPE_2__*,char const*,int ,scalar_t__,int *,int *) ;
 int svn_fs_x__make_path_mutable (TYPE_2__*,TYPE_1__*,char const*,int *,int *) ;
 int svn_fs_x__root_txn_id (TYPE_2__*) ;
 int svn_hash_sets (int *,char const*,int const*) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
x_change_node_prop(svn_fs_root_t *root,
                   const char *path,
                   const char *name,
                   const svn_string_t *value,
                   apr_pool_t *scratch_pool)
{
  svn_fs_x__dag_path_t *dag_path;
  apr_hash_t *proplist;
  svn_fs_x__txn_id_t txn_id;
  svn_boolean_t mergeinfo_mod = FALSE;
  apr_pool_t *subpool = svn_pool_create(scratch_pool);

  if (! root->is_txn_root)
    return SVN_FS__NOT_TXN(root);
  txn_id = svn_fs_x__root_txn_id(root);

  SVN_ERR(svn_fs_x__get_dag_path(&dag_path, root, path, 0, TRUE, subpool,
                                 subpool));



  if (root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    SVN_ERR(svn_fs_x__allow_locked_operation(path, root->fs, FALSE, FALSE,
                                             subpool));

  SVN_ERR(svn_fs_x__make_path_mutable(root, dag_path, path, subpool,
                                      subpool));
  SVN_ERR(svn_fs_x__dag_get_proplist(&proplist, dag_path->node, subpool,
                                     subpool));


  if ((! proplist) && (! value))
    return SVN_NO_ERROR;


  if (! proplist)
    proplist = apr_hash_make(subpool);

  if (strcmp(name, SVN_PROP_MERGEINFO) == 0)
    {
      apr_int64_t increment = 0;
      svn_boolean_t had_mergeinfo
        = svn_fs_x__dag_has_mergeinfo(dag_path->node);

      if (value && !had_mergeinfo)
        increment = 1;
      else if (!value && had_mergeinfo)
        increment = -1;

      if (increment != 0)
        {
          SVN_ERR(increment_mergeinfo_up_tree(dag_path, increment, subpool));
          SVN_ERR(svn_fs_x__dag_set_has_mergeinfo(dag_path->node,
                                                  (value != ((void*)0)), subpool));
        }

      mergeinfo_mod = TRUE;
    }


  svn_hash_sets(proplist, name, value);


  SVN_ERR(svn_fs_x__dag_set_proplist(dag_path->node, proplist,
                                     subpool));


  SVN_ERR(add_change(root->fs, txn_id, path,
                     svn_fs_path_change_modify, FALSE, TRUE, mergeinfo_mod,
                     svn_fs_x__dag_node_kind(dag_path->node),
                     SVN_INVALID_REVNUM, ((void*)0), subpool));

  svn_pool_destroy(subpool);
  return SVN_NO_ERROR;
}
