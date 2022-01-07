
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_node_kind_t ;
typedef int svn_fs_id_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
struct TYPE_5__ {scalar_t__ kind; } ;
typedef TYPE_1__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR_FS_NOT_DIRECTORY ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int _ (char*) ;
 int * set_entry (TYPE_1__*,char const*,int const*,int ,int const*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_fs__dag_check_mutable (TYPE_1__*) ;
 scalar_t__ svn_node_dir ;

svn_error_t *
svn_fs_fs__dag_set_entry(dag_node_t *node,
                         const char *entry_name,
                         const svn_fs_id_t *id,
                         svn_node_kind_t kind,
                         const svn_fs_fs__id_part_t *txn_id,
                         apr_pool_t *pool)
{

  if (node->kind != svn_node_dir)
    return svn_error_create
      (SVN_ERR_FS_NOT_DIRECTORY, ((void*)0),
       _("Attempted to set entry in non-directory node"));


  if (! svn_fs_fs__dag_check_mutable(node))
    return svn_error_create
      (SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
       _("Attempted to set entry in immutable node"));

  return set_entry(node, entry_name, id, kind, txn_id, pool);
}
