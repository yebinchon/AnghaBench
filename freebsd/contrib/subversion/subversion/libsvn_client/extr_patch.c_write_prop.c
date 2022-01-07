
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int svn_stringbuf_appendbytes (int *,char const*,int ) ;

__attribute__((used)) static svn_error_t *
write_prop(void *baton, const char *buf, apr_size_t len,
           apr_pool_t *scratch_pool)
{
  svn_stringbuf_t *patched_value = baton;

  svn_stringbuf_appendbytes(patched_value, buf, len);
  return SVN_NO_ERROR;
}
