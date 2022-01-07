
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int offsets; } ;
typedef TYPE_1__ p2l_header_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int * SVN_NO_ERROR ;
 int p2l_page_info_copy (void*,TYPE_1__ const*,int const*) ;
 int * svn_temp_deserializer__ptr (TYPE_1__ const*,void const* const*) ;

__attribute__((used)) static svn_error_t *
p2l_page_info_func(void **out,
                   const void *data,
                   apr_size_t data_len,
                   void *baton,
                   apr_pool_t *result_pool)
{

  const p2l_header_t *header = data;
  const apr_off_t *offsets
    = svn_temp_deserializer__ptr(header,
                                 (const void *const *)&header->offsets);


  p2l_page_info_copy(baton, header, offsets);
  return SVN_NO_ERROR;
}
