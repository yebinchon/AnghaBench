
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_5__ {scalar_t__ kind; } ;
typedef TYPE_1__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR_FS_NOT_DIRECTORY ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int _ (char*) ;
 int * set_entry (TYPE_1__*,char const*,int const*,char const*,int *,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_base__dag_check_mutable (TYPE_1__*,char const*) ;
 scalar_t__ svn_node_dir ;

svn_error_t *
svn_fs_base__dag_set_entry(dag_node_t *node,
                           const char *entry_name,
                           const svn_fs_id_t *id,
                           const char *txn_id,
                           trail_t *trail,
                           apr_pool_t *pool)
{

  if (node->kind != svn_node_dir)
    return svn_error_create
      (SVN_ERR_FS_NOT_DIRECTORY, ((void*)0),
       _("Attempted to set entry in non-directory node"));


  if (! svn_fs_base__dag_check_mutable(node, txn_id))
    return svn_error_create
      (SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
       _("Attempted to set entry in immutable node"));

  return set_entry(node, entry_name, id, txn_id, trail, pool);
}
