
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int page_table; int page_table_index; } ;
typedef TYPE_1__ l2p_header_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int svn_temp_deserializer__resolve (TYPE_1__*,void**) ;

svn_error_t *
svn_fs_fs__deserialize_l2p_header(void **out,
                                  void *data,
                                  apr_size_t data_len,
                                  apr_pool_t *pool)
{
  l2p_header_t *header = (l2p_header_t *)data;


  svn_temp_deserializer__resolve(header, (void**)&header->page_table_index);
  svn_temp_deserializer__resolve(header, (void**)&header->page_table);


  *out = header;

  return SVN_NO_ERROR;
}
