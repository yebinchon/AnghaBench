
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_temp_serializer__context_t ;
struct TYPE_4__ {int len; void* data; int blocksize; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_5__ {int len; } ;
typedef TYPE_2__ dir_data_t ;
typedef int apr_size_t ;


 int * SVN_NO_ERROR ;
 TYPE_1__* svn_temp_serializer__get (int *) ;

__attribute__((used)) static svn_error_t *
return_serialized_dir_context(svn_temp_serializer__context_t *context,
                              void **data,
                              apr_size_t *data_len,
                              svn_boolean_t overprovision)
{
  svn_stringbuf_t *serialized = svn_temp_serializer__get(context);

  *data = serialized->data;
  *data_len = overprovision ? serialized->blocksize : serialized->len;
  ((dir_data_t *)serialized->data)->len = serialized->len;

  return SVN_NO_ERROR;
}
