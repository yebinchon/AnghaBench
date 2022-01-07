
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* fs; scalar_t__ is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct copy_args {char const* from_path; char const* to_path; int preserve_history; TYPE_1__* to_root; TYPE_1__* from_root; } ;
typedef int apr_pool_t ;
struct TYPE_9__ {int path; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int * SVN_FS__NOT_TXN (TYPE_1__*) ;
 int TRUE ;
 int _ (char*) ;
 int fs_same_p (int *,TYPE_2__*,TYPE_2__*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,int ,int ) ;
 int * svn_fs_base__retry_txn (TYPE_2__*,int ,struct copy_args*,int ,int *) ;
 int txn_body_copy ;

__attribute__((used)) static svn_error_t *
copy_helper(svn_fs_root_t *from_root,
            const char *from_path,
            svn_fs_root_t *to_root,
            const char *to_path,
            svn_boolean_t preserve_history,
            apr_pool_t *pool)
{
  struct copy_args args;
  svn_boolean_t same_p;



  SVN_ERR(fs_same_p(&same_p, from_root->fs, to_root->fs, pool));
  if (! same_p)
    return svn_error_createf
      (SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
       _("Cannot copy between two different filesystems ('%s' and '%s')"),
       from_root->fs->path, to_root->fs->path);

  if (! to_root->is_txn_root)
    return SVN_FS__NOT_TXN(to_root);

  if (from_root->is_txn_root)
    return svn_error_create
      (SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
       _("Copy from mutable tree not currently supported"));

  args.from_root = from_root;
  args.from_path = from_path;
  args.to_root = to_root;
  args.to_path = to_path;
  args.preserve_history = preserve_history;

  return svn_fs_base__retry_txn(to_root->fs, txn_body_copy, &args,
                                TRUE, pool);
}
