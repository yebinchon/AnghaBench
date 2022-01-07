
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int offsets; } ;
typedef TYPE_1__ l2p_page_t ;
typedef int apr_uint64_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * l2p_page_get_entry (void*,TYPE_1__ const*,int const*,int *) ;
 int * svn_temp_deserializer__ptr (TYPE_1__ const*,void const* const*) ;

__attribute__((used)) static svn_error_t *
l2p_entry_access_func(void **out,
                      const void *data,
                      apr_size_t data_len,
                      void *baton,
                      apr_pool_t *result_pool)
{

  const l2p_page_t *page = data;
  const apr_uint64_t *offsets
    = svn_temp_deserializer__ptr(page, (const void *const *)&page->offsets);


  return l2p_page_get_entry(baton, page, offsets, result_pool);
}
