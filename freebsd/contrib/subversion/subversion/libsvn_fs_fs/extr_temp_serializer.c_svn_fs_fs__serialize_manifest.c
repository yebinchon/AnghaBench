
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
struct TYPE_2__ {int nelts; int elts; } ;
typedef TYPE_1__ apr_array_header_t ;


 int * SVN_NO_ERROR ;
 void* apr_pmemdup (int *,int ,int) ;

svn_error_t *
svn_fs_fs__serialize_manifest(void **data,
                              apr_size_t *data_len,
                              void *in,
                              apr_pool_t *pool)
{
  apr_array_header_t *manifest = in;

  *data_len = sizeof(apr_off_t) *manifest->nelts;
  *data = apr_pmemdup(pool, manifest->elts, *data_len);

  return SVN_NO_ERROR;
}
