
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int *,char const*) ;
 char* svn_dirent_canonicalize (char const*,int *) ;
 int svn_utf_cstring_to_utf8 (char const**,char const*,int *) ;

__attribute__((used)) static svn_error_t *
grab_filename(const char **file_name, const char *line, apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  const char *utf8_path;
  const char *canon_path;






  SVN_ERR(svn_utf_cstring_to_utf8(&utf8_path,
                                  line,
                                  scratch_pool));


  canon_path = svn_dirent_canonicalize(utf8_path, scratch_pool);

  *file_name = apr_pstrdup(result_pool, canon_path);

  return SVN_NO_ERROR;
}
