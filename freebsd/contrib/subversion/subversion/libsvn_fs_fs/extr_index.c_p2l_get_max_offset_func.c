
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int file_size; } ;
typedef TYPE_1__ p2l_header_t ;
typedef int max_offset ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int * SVN_NO_ERROR ;
 void* apr_pmemdup (int *,int *,int) ;

__attribute__((used)) static svn_error_t *
p2l_get_max_offset_func(void **out,
                        const void *data,
                        apr_size_t data_len,
                        void *baton,
                        apr_pool_t *result_pool)
{
  const p2l_header_t *header = data;
  apr_off_t max_offset = header->file_size;
  *out = apr_pmemdup(result_pool, &max_offset, sizeof(max_offset));

  return SVN_NO_ERROR;
}
