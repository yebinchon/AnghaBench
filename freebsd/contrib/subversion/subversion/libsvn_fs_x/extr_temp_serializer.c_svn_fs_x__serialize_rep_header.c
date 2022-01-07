
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_x__rep_header_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;

svn_error_t *
svn_fs_x__serialize_rep_header(void **data,
                               apr_size_t *data_len,
                               void *in,
                               apr_pool_t *pool)
{
  *data_len = sizeof(svn_fs_x__rep_header_t);
  *data = in;

  return SVN_NO_ERROR;
}
