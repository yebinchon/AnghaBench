
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int SVN_FS_X__RECOVERABLE_RETRY_COUNT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_fs_x__try_stringbuf_from_file (int **,int *,char const*,int,int *) ;

svn_error_t *
svn_fs_x__read_content(svn_stringbuf_t **content,
                       const char *fname,
                       apr_pool_t *result_pool)
{
  int i;
  *content = ((void*)0);

  for (i = 0; !*content && (i < SVN_FS_X__RECOVERABLE_RETRY_COUNT); ++i)
    SVN_ERR(svn_fs_x__try_stringbuf_from_file(content, ((void*)0),
                           fname, i + 1 < SVN_FS_X__RECOVERABLE_RETRY_COUNT,
                           result_pool));

  if (!*content)
    return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                             _("Can't read '%s'"),
                             svn_dirent_local_style(fname, result_pool));

  return SVN_NO_ERROR;
}
