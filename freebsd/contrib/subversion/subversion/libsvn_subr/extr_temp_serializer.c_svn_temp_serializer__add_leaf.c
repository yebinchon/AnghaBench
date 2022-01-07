
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int buffer; } ;
typedef TYPE_1__ svn_temp_serializer__context_t ;
typedef int apr_size_t ;


 int align_buffer_end (TYPE_1__*) ;
 int store_current_end_pointer (TYPE_1__*,void const* const*) ;
 int svn_stringbuf_appendbytes (int ,void const*,int ) ;

void
svn_temp_serializer__add_leaf(svn_temp_serializer__context_t *context,
                              const void * const * source_struct,
                              apr_size_t struct_size)
{
  const void *source = *source_struct;


  if (source)
    align_buffer_end(context);



  store_current_end_pointer(context, source_struct);


  if (*source_struct)
    svn_stringbuf_appendbytes(context->buffer, source, struct_size);
}
