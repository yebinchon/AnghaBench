
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct fb_baton {int cb_baton; int (* provide_base_cb ) (int **,int *,int ,char const*,int *,int *) ;} ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int *,char const*) ;
 int stub1 (int **,int *,int ,char const*,int *,int *) ;
 int svn_io_file_del_on_pool_cleanup ;
 int svn_stream_copy3 (int *,int *,int *,int *,int *) ;
 int svn_stream_open_unique (int **,char const**,int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
fetch_base(const char **filename,
           void *baton,
           const char *repos_relpath,
           svn_revnum_t base_revision,
           apr_pool_t *result_pool,
           apr_pool_t *scratch_pool)
{
  struct fb_baton *fbb = baton;
  svn_revnum_t unused_revision;
  svn_stream_t *contents;
  svn_stream_t *file_stream;
  const char *tmp_filename;



  SVN_ERR(fbb->provide_base_cb(&contents, &unused_revision, fbb->cb_baton,
                               repos_relpath, result_pool, scratch_pool));

  SVN_ERR(svn_stream_open_unique(&file_stream, &tmp_filename, ((void*)0),
                                 svn_io_file_del_on_pool_cleanup,
                                 scratch_pool, scratch_pool));
  SVN_ERR(svn_stream_copy3(contents, file_stream, ((void*)0), ((void*)0), scratch_pool));

  *filename = apr_pstrdup(result_pool, tmp_filename);



  return SVN_NO_ERROR;
}
