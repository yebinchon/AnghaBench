
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int pool; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_17__ {char* txn; int txn_flags; int fs; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_error_t ;
struct make_file_args {char* path; TYPE_2__* root; } ;
struct TYPE_18__ {int entry; TYPE_7__* parent; scalar_t__ node; } ;
typedef TYPE_3__ parent_path_t ;
typedef int dag_node_t ;
struct TYPE_19__ {int node; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_FS_TXN_CHECK_LOCKS ;
 int * SVN_FS__ALREADY_EXISTS (TYPE_2__*,char const*) ;
 int TRUE ;
 int * add_change (int ,char const*,char const*,int ,int ,int ,int ,TYPE_1__*,int ) ;
 int make_path_mutable (TYPE_2__*,TYPE_7__*,char const*,TYPE_1__*,int ) ;
 int open_path (TYPE_3__**,TYPE_2__*,char const*,int ,char const*,TYPE_1__*,int ) ;
 int open_path_last_optional ;
 int parent_path_path (TYPE_7__*,int ) ;
 int svn_fs_base__allow_locked_operation (char const*,int ,TYPE_1__*,int ) ;
 int svn_fs_base__dag_get_id (int *) ;
 int svn_fs_base__dag_make_file (int **,int ,int ,int ,char const*,TYPE_1__*,int ) ;
 int svn_fs_path_change_add ;

__attribute__((used)) static svn_error_t *
txn_body_make_file(void *baton,
                   trail_t *trail)
{
  struct make_file_args *args = baton;
  svn_fs_root_t *root = args->root;
  const char *path = args->path;
  parent_path_t *parent_path;
  dag_node_t *child;
  const char *txn_id = root->txn;

  SVN_ERR(open_path(&parent_path, root, path, open_path_last_optional,
                    txn_id, trail, trail->pool));



  if (parent_path->node)
    return SVN_FS__ALREADY_EXISTS(root, path);




  if (args->root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    {
      SVN_ERR(svn_fs_base__allow_locked_operation(path, TRUE,
                                                  trail, trail->pool));
    }


  SVN_ERR(make_path_mutable(root, parent_path->parent, path,
                            trail, trail->pool));
  SVN_ERR(svn_fs_base__dag_make_file(&child,
                                     parent_path->parent->node,
                                     parent_path_path(parent_path->parent,
                                                      trail->pool),
                                     parent_path->entry,
                                     txn_id,
                                     trail, trail->pool));


  return add_change(root->fs, txn_id, path,
                    svn_fs_base__dag_get_id(child),
                    svn_fs_path_change_add, TRUE, FALSE,
                    trail, trail->pool);
}
