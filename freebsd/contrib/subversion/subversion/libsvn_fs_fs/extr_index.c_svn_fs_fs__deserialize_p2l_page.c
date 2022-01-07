
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {int nelts; int nalloc; int * pool; int elts; } ;
typedef TYPE_1__ apr_array_header_t ;


 int * SVN_NO_ERROR ;
 int svn_temp_deserializer__resolve (TYPE_1__*,void**) ;

svn_error_t *
svn_fs_fs__deserialize_p2l_page(void **out,
                                void *data,
                                apr_size_t data_len,
                                apr_pool_t *pool)
{
  apr_array_header_t *page = (apr_array_header_t *)data;


  svn_temp_deserializer__resolve(page, (void**)&page->elts);


  page->pool = pool;
  page->nalloc = page->nelts;


  *out = page;

  return SVN_NO_ERROR;
}
