
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {int end; int start; } ;
typedef TYPE_1__ p2l_entries_baton_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {void* elts; } ;
typedef TYPE_2__ apr_array_header_t ;


 int * SVN_NO_ERROR ;
 int append_p2l_entries (TYPE_2__*,TYPE_2__*,int ,int ) ;
 scalar_t__ svn_temp_deserializer__ptr (TYPE_2__ const*,void const* const*) ;

__attribute__((used)) static svn_error_t *
p2l_entries_func(void **out,
                 const void *data,
                 apr_size_t data_len,
                 void *baton,
                 apr_pool_t *result_pool)
{
  apr_array_header_t *entries = *(apr_array_header_t **)out;
  const apr_array_header_t *raw_page = data;
  p2l_entries_baton_t *block = baton;


  apr_array_header_t page = *raw_page;
  page.elts = (void *)svn_temp_deserializer__ptr(raw_page,
                                    (const void * const *)&raw_page->elts);


  append_p2l_entries(entries, &page, block->start, block->end);

  return SVN_NO_ERROR;
}
