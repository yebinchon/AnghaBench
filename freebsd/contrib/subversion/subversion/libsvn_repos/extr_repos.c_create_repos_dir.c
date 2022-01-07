
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int APR_OS_DEFAULT ;
 scalar_t__ APR_STATUS_IS_EEXIST (int ) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_DIR_NOT_EMPTY ;
 int _ (char*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_createf (int ,int ,int ,int ) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_io_dir_empty (scalar_t__*,char const*,int *) ;
 TYPE_1__* svn_io_dir_make (char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
create_repos_dir(const char *path, apr_pool_t *pool)
{
  svn_error_t *err;

  err = svn_io_dir_make(path, APR_OS_DEFAULT, pool);
  if (err && (APR_STATUS_IS_EEXIST(err->apr_err)))
    {
      svn_boolean_t is_empty;

      svn_error_clear(err);

      SVN_ERR(svn_io_dir_empty(&is_empty, path, pool));

      if (is_empty)
        err = ((void*)0);
      else
        err = svn_error_createf(SVN_ERR_DIR_NOT_EMPTY, 0,
                                _("'%s' exists and is non-empty"),
                                svn_dirent_local_style(path, pool));
    }

  return svn_error_trace(err);
}
