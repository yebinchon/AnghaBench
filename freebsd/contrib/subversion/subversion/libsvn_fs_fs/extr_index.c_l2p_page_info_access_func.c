
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int l2p_page_table_entry_t ;
struct TYPE_4__ {int page_table_index; int page_table; } ;
typedef TYPE_1__ l2p_header_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * l2p_page_info_copy (void*,TYPE_1__ const*,int const*,int const*,int *) ;
 void* svn_temp_deserializer__ptr (TYPE_1__ const*,void const* const*) ;

__attribute__((used)) static svn_error_t *
l2p_page_info_access_func(void **out,
                          const void *data,
                          apr_size_t data_len,
                          void *baton,
                          apr_pool_t *result_pool)
{

  const l2p_header_t *header = data;
  const l2p_page_table_entry_t *page_table
    = svn_temp_deserializer__ptr(header,
                                 (const void *const *)&header->page_table);
  const apr_size_t *page_table_index
    = svn_temp_deserializer__ptr(header,
                           (const void *const *)&header->page_table_index);


  return l2p_page_info_copy(baton, header, page_table, page_table_index,
                            result_pool);
}
