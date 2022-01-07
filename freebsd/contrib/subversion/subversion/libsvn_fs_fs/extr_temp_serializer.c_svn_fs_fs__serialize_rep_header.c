
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_fs__rep_header_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int * apr_palloc (int *,int) ;

svn_error_t *
svn_fs_fs__serialize_rep_header(void **data,
                                apr_size_t *data_len,
                                void *in,
                                apr_pool_t *pool)
{
  svn_fs_fs__rep_header_t *copy = apr_palloc(pool, sizeof(*copy));
  *copy = *(svn_fs_fs__rep_header_t *)in;

  *data_len = sizeof(*copy);
  *data = copy;

  return SVN_NO_ERROR;
}
