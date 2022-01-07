
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char const* SVN_REPOS_DUMPFILE_CONTENT_LENGTH ;

 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int svn_hash_sets (int *,char const*,int *) ;
 int write_header (int *,int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
write_revision_headers(svn_stream_t *stream,
                       apr_hash_t *headers,
                       apr_pool_t *scratch_pool)
{
  const char **h;
  apr_hash_index_t *hi;

  static const char *revision_headers_order[] =
  {
    128,
    ((void*)0)
  };


  for (h = revision_headers_order; *h; h++)
    {
      SVN_ERR(write_header(stream, headers, *h, scratch_pool));
      svn_hash_sets(headers, *h, ((void*)0));
    }




  for (hi = apr_hash_first(scratch_pool, headers); hi; hi = apr_hash_next(hi))
    {
      const char *key = apr_hash_this_key(hi);

      if (strcmp(key, SVN_REPOS_DUMPFILE_CONTENT_LENGTH) != 0)
        SVN_ERR(write_header(stream, headers, key, scratch_pool));
    }


  SVN_ERR(write_header(stream, headers, SVN_REPOS_DUMPFILE_CONTENT_LENGTH,
                       scratch_pool));

  return SVN_NO_ERROR;
}
