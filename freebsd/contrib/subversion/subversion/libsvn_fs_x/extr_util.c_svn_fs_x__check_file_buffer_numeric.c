
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int SVN_ERR_BAD_VERSION_FILE_FORMAT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_ctype_isdigit (char const) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*,int ,char const,char const*) ;

svn_error_t *
svn_fs_x__check_file_buffer_numeric(const char *buf,
                                    apr_off_t offset,
                                    const char *path,
                                    const char *title,
                                    apr_pool_t *scratch_pool)
{
  const char *p;

  for (p = buf + offset; *p; p++)
    if (!svn_ctype_isdigit(*p))
      return svn_error_createf(SVN_ERR_BAD_VERSION_FILE_FORMAT, ((void*)0),
        _("%s file '%s' contains unexpected non-digit '%c' within '%s'"),
        title, svn_dirent_local_style(path, scratch_pool), *p, buf);

  return SVN_NO_ERROR;
}
