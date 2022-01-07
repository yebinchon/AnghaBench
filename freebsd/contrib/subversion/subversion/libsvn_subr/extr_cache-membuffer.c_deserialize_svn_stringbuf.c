
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* len; void* data; void* blocksize; int * pool; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef void* apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 TYPE_1__* apr_palloc (int *,int) ;

__attribute__((used)) static svn_error_t *
deserialize_svn_stringbuf(void **item,
                          void *buffer,
                          apr_size_t buffer_size,
                          apr_pool_t *result_pool)
{
  svn_stringbuf_t *value_str = apr_palloc(result_pool, sizeof(svn_stringbuf_t));

  value_str->pool = result_pool;
  value_str->blocksize = buffer_size;
  value_str->data = buffer;
  value_str->len = buffer_size-1;
  *item = value_str;

  return SVN_NO_ERROR;
}
