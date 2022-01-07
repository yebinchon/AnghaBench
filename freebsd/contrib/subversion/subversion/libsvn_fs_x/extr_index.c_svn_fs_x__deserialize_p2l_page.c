
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nelts; int nalloc; int * pool; int items; scalar_t__ elts; } ;
typedef TYPE_1__ svn_fs_x__p2l_entry_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef TYPE_1__ apr_array_header_t ;


 int * SVN_NO_ERROR ;
 int svn_temp_deserializer__resolve (TYPE_1__*,void**) ;

svn_error_t *
svn_fs_x__deserialize_p2l_page(void **out,
                               void *data,
                               apr_size_t data_len,
                               apr_pool_t *result_pool)
{
  apr_array_header_t *page = (apr_array_header_t *)data;
  svn_fs_x__p2l_entry_t *entries;
  int i;


  svn_temp_deserializer__resolve(page, (void**)&page->elts);


  entries = (svn_fs_x__p2l_entry_t *)page->elts;
  for (i = 0; i < page->nelts; ++i)
    svn_temp_deserializer__resolve(entries, (void**)&entries[i].items);


  page->pool = result_pool;
  page->nalloc = page->nelts;


  *out = page;

  return SVN_NO_ERROR;
}
