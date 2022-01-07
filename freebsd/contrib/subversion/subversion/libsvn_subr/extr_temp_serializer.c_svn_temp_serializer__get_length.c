
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* buffer; } ;
typedef TYPE_2__ svn_temp_serializer__context_t ;
typedef int apr_size_t ;
struct TYPE_4__ {int len; } ;



apr_size_t
svn_temp_serializer__get_length(svn_temp_serializer__context_t *context)
{
  return context->buffer->len;
}
