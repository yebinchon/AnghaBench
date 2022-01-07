
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
struct TYPE_5__ {scalar_t__ fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct things_changed_args {char const* path1; char const* path2; int strict; int * pool; int * changed_p; TYPE_1__* root2; TYPE_1__* root1; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_GENERAL ;
 int TRUE ;
 int _ (char*) ;
 int base_check_path (scalar_t__*,TYPE_1__*,char const*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int * svn_fs_base__retry_txn (scalar_t__,int ,struct things_changed_args*,int ,int *) ;
 scalar_t__ svn_node_file ;
 int txn_body_contents_changed ;

__attribute__((used)) static svn_error_t *
base_contents_changed(svn_boolean_t *changed_p,
                      svn_fs_root_t *root1,
                      const char *path1,
                      svn_fs_root_t *root2,
                      const char *path2,
                      svn_boolean_t strict,
                      apr_pool_t *pool)
{
  struct things_changed_args args;


  if (root1->fs != root2->fs)
    return svn_error_create
      (SVN_ERR_FS_GENERAL, ((void*)0),
       _("Cannot compare file contents between two different filesystems"));


  {
    svn_node_kind_t kind;

    SVN_ERR(base_check_path(&kind, root1, path1, pool));
    if (kind != svn_node_file)
      return svn_error_createf
        (SVN_ERR_FS_GENERAL, ((void*)0), _("'%s' is not a file"), path1);

    SVN_ERR(base_check_path(&kind, root2, path2, pool));
    if (kind != svn_node_file)
      return svn_error_createf
        (SVN_ERR_FS_GENERAL, ((void*)0), _("'%s' is not a file"), path2);
  }

  args.root1 = root1;
  args.root2 = root2;
  args.path1 = path1;
  args.path2 = path2;
  args.changed_p = changed_p;
  args.pool = pool;
  args.strict = strict;

  return svn_fs_base__retry_txn(root1->fs, txn_body_contents_changed, &args,
                                TRUE, pool);
}
