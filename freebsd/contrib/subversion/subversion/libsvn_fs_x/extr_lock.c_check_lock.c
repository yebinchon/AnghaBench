
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_lock_t ;
typedef int svn_fs_root_t ;
struct TYPE_5__ {scalar_t__ current_rev; } ;
typedef TYPE_1__ svn_fs_lock_target_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int fs; int steal_lock; } ;
typedef TYPE_2__ lock_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_FOUND ;
 int SVN_ERR_FS_NO_SUCH_REVISION ;
 int SVN_ERR_FS_OUT_OF_DATE ;
 int * SVN_FS__ERR_NOT_FILE (int ,char const*) ;
 int * SVN_FS__ERR_PATH_ALREADY_LOCKED (int ,int *) ;
 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int get_lock_helper (int ,int **,char const*,int ,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_fs_x__check_path (scalar_t__*,int *,char const*,int *) ;
 int svn_fs_x__node_created_rev (scalar_t__*,int *,char const*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_none ;

__attribute__((used)) static svn_error_t *
check_lock(svn_error_t **fs_err,
           const char *path,
           const svn_fs_lock_target_t *target,
           lock_baton_t *lb,
           svn_fs_root_t *root,
           svn_revnum_t youngest_rev,
           apr_pool_t *pool)
{
  svn_node_kind_t kind;
  svn_lock_t *existing_lock;

  *fs_err = SVN_NO_ERROR;

  SVN_ERR(svn_fs_x__check_path(&kind, root, path, pool));
  if (kind == svn_node_dir)
    {
      *fs_err = SVN_FS__ERR_NOT_FILE(lb->fs, path);
      return SVN_NO_ERROR;
    }



  if (kind == svn_node_none)
    {
      if (SVN_IS_VALID_REVNUM(target->current_rev))
        *fs_err = svn_error_createf(
          SVN_ERR_FS_OUT_OF_DATE, ((void*)0),
          _("Path '%s' doesn't exist in HEAD revision"),
          path);
      else
        *fs_err = svn_error_createf(
          SVN_ERR_FS_NOT_FOUND, ((void*)0),
          _("Path '%s' doesn't exist in HEAD revision"),
          path);

      return SVN_NO_ERROR;
    }


  if (SVN_IS_VALID_REVNUM(target->current_rev))
    {
      svn_revnum_t created_rev;

      if (target->current_rev > youngest_rev)
        {
          *fs_err = svn_error_createf(SVN_ERR_FS_NO_SUCH_REVISION, ((void*)0),
                                      _("No such revision %ld"),
                                      target->current_rev);
          return SVN_NO_ERROR;
        }

      SVN_ERR(svn_fs_x__node_created_rev(&created_rev, root, path,
                                         pool));





      if (! SVN_IS_VALID_REVNUM(created_rev))
        {
          *fs_err = svn_error_createf
            (SVN_ERR_FS_OUT_OF_DATE, ((void*)0),
             _("Path '%s' doesn't exist in HEAD revision"), path);

          return SVN_NO_ERROR;
        }

      if (target->current_rev < created_rev)
        {
          *fs_err = svn_error_createf
            (SVN_ERR_FS_OUT_OF_DATE, ((void*)0),
             _("Lock failed: newer version of '%s' exists"), path);

          return SVN_NO_ERROR;
        }
    }
  SVN_ERR(get_lock_helper(lb->fs, &existing_lock, path, TRUE, pool));
  if (existing_lock)
    {
      if (! lb->steal_lock)
        {

          *fs_err = SVN_FS__ERR_PATH_ALREADY_LOCKED(lb->fs, existing_lock);
          return SVN_NO_ERROR;
        }
    }

  return SVN_NO_ERROR;
}
