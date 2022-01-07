
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_pool_t ;


 int APR_STATUS_IS_ENOENT (scalar_t__) ;
 int APR_STATUS_IS_ENOTDIR (scalar_t__) ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_BAD_VERSION_FILE_FORMAT ;
 int SVN_ERR_WC_MISSING ;
 TYPE_1__* SVN_NO_ERROR ;
 int SVN_WC__ADM_ENTRIES ;
 int SVN_WC__ADM_FORMAT ;
 int _ (char*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_createf (int ,TYPE_1__*,int ,int ) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 TYPE_1__* svn_io_read_version_file (int*,char const*,int *) ;
 scalar_t__ svn_node_none ;
 char* svn_wc__adm_child (char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_old_version(int *version,
                const char *abspath,
                apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  const char *format_file_path;
  svn_node_kind_t kind;


  format_file_path = svn_wc__adm_child(abspath, SVN_WC__ADM_ENTRIES,
                                       scratch_pool);



  SVN_ERR(svn_io_check_path(format_file_path, &kind, scratch_pool));
  if (kind == svn_node_none)
    {
      *version = 0;
      return SVN_NO_ERROR;
    }

  err = svn_io_read_version_file(version, format_file_path, scratch_pool);
  if (err == ((void*)0))
    return SVN_NO_ERROR;
  if (err->apr_err != SVN_ERR_BAD_VERSION_FILE_FORMAT
      && !APR_STATUS_IS_ENOENT(err->apr_err)
      && !APR_STATUS_IS_ENOTDIR(err->apr_err))
    return svn_error_createf(SVN_ERR_WC_MISSING, err, _("'%s' does not exist"),
                             svn_dirent_local_style(abspath, scratch_pool));
  svn_error_clear(err);







  format_file_path = svn_wc__adm_child(abspath, SVN_WC__ADM_FORMAT,
                                       scratch_pool);
  err = svn_io_read_version_file(version, format_file_path, scratch_pool);
  if (err == ((void*)0))
    return SVN_NO_ERROR;



  svn_error_clear(err);

  *version = 0;
  return SVN_NO_ERROR;
}
