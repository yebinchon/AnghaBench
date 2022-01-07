
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* source; TYPE_1__* buffer; } ;
typedef TYPE_3__ svn_temp_serializer__context_t ;
typedef scalar_t__ apr_size_t ;
struct TYPE_6__ {scalar_t__ target_offset; scalar_t__ source_struct; } ;
struct TYPE_5__ {scalar_t__ len; scalar_t__ data; } ;


 int assert (int) ;

__attribute__((used)) static void
store_current_end_pointer(svn_temp_serializer__context_t *context,
                          const void * const * source_pointer)
{
  apr_size_t ptr_offset;
  apr_size_t *target_ptr;



  if (context->source == ((void*)0))
    return;


  ptr_offset = (const char *)source_pointer
             - (const char *)context->source->source_struct
             + context->source->target_offset;



  assert(context->buffer->len > ptr_offset);


  target_ptr = (apr_size_t*)(context->buffer->data + ptr_offset);



  *target_ptr = *source_pointer == ((void*)0)
              ? 0
              : context->buffer->len - context->source->target_offset;
}
