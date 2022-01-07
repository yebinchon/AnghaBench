
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; scalar_t__ data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;

svn_error_t *
svn_fs_fs__serialize_revprops(void **data,
                              apr_size_t *data_len,
                              void *in,
                              apr_pool_t *pool)
{
  svn_string_t *buffer = in;

  *data = (void *)buffer->data;
  *data_len = buffer->len;

  return SVN_NO_ERROR;
}
