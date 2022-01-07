
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int sub_items; int offsets; } ;
typedef TYPE_1__ l2p_page_t ;
typedef int apr_uint32_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int * l2p_page_get_offset (void*,TYPE_1__ const*,int const*,int const*,int *) ;
 void* svn_temp_deserializer__ptr (TYPE_1__ const*,void const* const*) ;

__attribute__((used)) static svn_error_t *
l2p_page_access_func(void **out,
                     const void *data,
                     apr_size_t data_len,
                     void *baton,
                     apr_pool_t *result_pool)
{

  const l2p_page_t *page = data;
  const apr_off_t *offsets
    = svn_temp_deserializer__ptr(page, (const void *const *)&page->offsets);
  const apr_uint32_t *sub_items
    = svn_temp_deserializer__ptr(page, (const void *const *)&page->sub_items);


  return l2p_page_get_offset(baton, page, offsets, sub_items, result_pool);
}
