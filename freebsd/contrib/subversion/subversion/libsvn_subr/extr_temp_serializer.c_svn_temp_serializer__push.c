
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* buffer; TYPE_2__* source; int pool; TYPE_2__* recycler; } ;
typedef TYPE_1__ svn_temp_serializer__context_t ;
struct TYPE_9__ {struct TYPE_9__* upper; int target_offset; void const* source_struct; } ;
typedef TYPE_2__ source_stack_t ;
typedef int apr_size_t ;
struct TYPE_10__ {int len; } ;


 int align_buffer_end (TYPE_1__*) ;
 TYPE_2__* apr_palloc (int ,int) ;
 int store_current_end_pointer (TYPE_1__*,void const* const*) ;
 int svn_stringbuf_appendbytes (TYPE_4__*,void const*,int ) ;

void
svn_temp_serializer__push(svn_temp_serializer__context_t *context,
                          const void * const * source_struct,
                          apr_size_t struct_size)
{
  const void *source = *source_struct;
  source_stack_t *new;


  if (context->recycler)
    {
      new = context->recycler;
      context->recycler = new->upper;
    }
  else
    new = apr_palloc(context->pool, sizeof(*new));


  if (source)
    align_buffer_end(context);



  store_current_end_pointer(context, source_struct);


  new->source_struct = source;
  new->target_offset = context->buffer->len;


  new->upper = context->source;
  context->source = new;



  if (*source_struct)
    svn_stringbuf_appendbytes(context->buffer, source, struct_size);
}
