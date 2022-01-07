
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_node_kind_t ;
typedef int svn_fs_x__txn_id_t ;
typedef int svn_fs_x__id_t ;
typedef int svn_error_t ;
struct TYPE_7__ {TYPE_1__* node_revision; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {scalar_t__ kind; } ;


 int SVN_ERR_FS_NOT_DIRECTORY ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int _ (char*) ;
 int * set_entry (TYPE_2__*,char const*,int const*,int ,int ,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_x__dag_check_mutable (TYPE_2__*) ;
 scalar_t__ svn_node_dir ;

svn_error_t *
svn_fs_x__dag_set_entry(dag_node_t *node,
                        const char *entry_name,
                        const svn_fs_x__id_t *id,
                        svn_node_kind_t kind,
                        svn_fs_x__txn_id_t txn_id,
                        apr_pool_t *scratch_pool)
{

  if (node->node_revision->kind != svn_node_dir)
    return svn_error_create
      (SVN_ERR_FS_NOT_DIRECTORY, ((void*)0),
       _("Attempted to set entry in non-directory node"));


  if (! svn_fs_x__dag_check_mutable(node))
    return svn_error_create
      (SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
       _("Attempted to set entry in immutable node"));

  return set_entry(node, entry_name, id, kind, txn_id, scratch_pool);
}
