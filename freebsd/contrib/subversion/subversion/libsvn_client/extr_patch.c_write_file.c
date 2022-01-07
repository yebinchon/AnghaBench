
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_io_file_write_full (int *,char const*,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
write_file(void *baton, const char *buf, apr_size_t len,
           apr_pool_t *scratch_pool)
{
  apr_file_t *file = baton;

  SVN_ERR(svn_io_file_write_full(file, buf, len, &len, scratch_pool));
  return SVN_NO_ERROR;
}
