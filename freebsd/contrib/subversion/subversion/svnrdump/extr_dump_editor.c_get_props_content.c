
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef int svn_repos__dumpfile_headers_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_REPOS_DUMPFILE_PROP_DELTA ;
 int svn_hash_write_incremental (int *,int *,int *,char*,int *) ;
 int svn_rdump__normalize_props (int **,int *,int *) ;
 int svn_repos__dumpfile_header_push (int *,int ,char*) ;
 int svn_stream_close (int *) ;
 int * svn_stream_from_stringbuf (int *,int *) ;
 int * svn_stringbuf_create_empty (int *) ;

__attribute__((used)) static svn_error_t *
get_props_content(svn_repos__dumpfile_headers_t *headers,
                  svn_stringbuf_t **content,
                  apr_hash_t *props,
                  apr_hash_t *deleted_props,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_stream_t *content_stream;
  apr_hash_t *normal_props;

  *content = svn_stringbuf_create_empty(result_pool);

  content_stream = svn_stream_from_stringbuf(*content, scratch_pool);

  SVN_ERR(svn_rdump__normalize_props(&normal_props, props, scratch_pool));
  SVN_ERR(svn_hash_write_incremental(normal_props, deleted_props,
                                     content_stream, "PROPS-END",
                                     scratch_pool));
  SVN_ERR(svn_stream_close(content_stream));


  svn_repos__dumpfile_header_push(
    headers, SVN_REPOS_DUMPFILE_PROP_DELTA, "true");

  return SVN_NO_ERROR;
}
