
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* svn_hash_gets (int *,char const*) ;
 int svn_stream_printf (int *,int *,char*,char const*,char const*) ;

__attribute__((used)) static svn_error_t *
write_header(svn_stream_t *stream,
             apr_hash_t *headers,
             const char *key,
             apr_pool_t *scratch_pool)
{
  const char *val = svn_hash_gets(headers, key);

  if (val)
    {
      SVN_ERR(svn_stream_printf(stream, scratch_pool,
                                "%s: %s\n", key, val));
    }
  return SVN_NO_ERROR;
}
