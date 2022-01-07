
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * buffer; } ;
typedef TYPE_1__ svn_temp_serializer__context_t ;
typedef int svn_stringbuf_t ;



svn_stringbuf_t *
svn_temp_serializer__get(svn_temp_serializer__context_t *context)
{
  return context->buffer;
}
