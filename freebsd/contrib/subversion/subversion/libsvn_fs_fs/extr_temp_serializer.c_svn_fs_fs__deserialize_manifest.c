
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
struct TYPE_3__ {int nelts; int nalloc; char* elts; } ;
typedef TYPE_1__ apr_array_header_t ;


 int * SVN_NO_ERROR ;
 TYPE_1__* apr_array_make (int *,int,int) ;

svn_error_t *
svn_fs_fs__deserialize_manifest(void **out,
                                void *data,
                                apr_size_t data_len,
                                apr_pool_t *pool)
{
  apr_array_header_t *manifest = apr_array_make(pool, 1, sizeof(apr_off_t));

  manifest->nelts = (int) (data_len / sizeof(apr_off_t));
  manifest->nalloc = (int) (data_len / sizeof(apr_off_t));
  manifest->elts = (char*)data;

  *out = manifest;

  return SVN_NO_ERROR;
}
