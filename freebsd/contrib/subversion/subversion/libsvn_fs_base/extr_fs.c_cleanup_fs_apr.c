
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int warning_baton; int (* warning ) (int ,int *) ;} ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int SVN_ERR_FS_CLEANUP ;
 int * cleanup_fs (TYPE_1__*) ;
 int print_fs_stats (TYPE_1__*) ;
 int stub1 (int ,int *) ;
 int svn_error_clear (int *) ;

__attribute__((used)) static apr_status_t
cleanup_fs_apr(void *data)
{
  svn_fs_t *fs = data;
  svn_error_t *err;

  print_fs_stats(fs);

  err = cleanup_fs(fs);
  if (! err)
    return APR_SUCCESS;




  (*fs->warning)(fs->warning_baton, err);

  svn_error_clear(err);

  return SVN_ERR_FS_CLEANUP;
}
