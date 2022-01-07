
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int start; int len; void* read; int buffer; } ;
typedef TYPE_1__ fulltext_baton_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 void* MIN (int,int) ;
 int * SVN_NO_ERROR ;
 int memcpy (int ,char const*,void*) ;

__attribute__((used)) static svn_error_t *
get_fulltext_partial(void **out,
                     const void *data,
                     apr_size_t data_len,
                     void *baton,
                     apr_pool_t *result_pool)
{
  fulltext_baton_t *fulltext_baton = baton;


  apr_size_t fulltext_len = data_len - 1;


  apr_size_t start = MIN(fulltext_baton->start, fulltext_len);
  fulltext_baton->read = MIN(fulltext_len - start, fulltext_baton->len);


  memcpy(fulltext_baton->buffer, (const char *)data + start,
         fulltext_baton->read);

  return SVN_NO_ERROR;
}
