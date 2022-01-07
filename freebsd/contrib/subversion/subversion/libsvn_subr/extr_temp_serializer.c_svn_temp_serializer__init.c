
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* source; int buffer; int * recycler; int * pool; } ;
typedef TYPE_2__ svn_temp_serializer__context_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int * upper; scalar_t__ target_offset; void const* source_struct; } ;


 void* apr_palloc (int *,int) ;
 int svn_stringbuf_appendbytes (int ,void const*,int ) ;
 int svn_stringbuf_create_ensure (int ,int *) ;

svn_temp_serializer__context_t *
svn_temp_serializer__init(const void *source_struct,
                          apr_size_t struct_size,
                          apr_size_t suggested_buffer_size,
                          apr_pool_t *pool)
{

  apr_size_t init_size = suggested_buffer_size < struct_size
                       ? struct_size
                       : suggested_buffer_size;


  svn_temp_serializer__context_t *context = apr_palloc(pool, sizeof(*context));
  context->pool = pool;
  context->buffer = svn_stringbuf_create_ensure(init_size, pool);
  context->recycler = ((void*)0);


  if (source_struct)
    {
      context->source = apr_palloc(pool, sizeof(*context->source));
      context->source->source_struct = source_struct;
      context->source->target_offset = 0;
      context->source->upper = ((void*)0);


      svn_stringbuf_appendbytes(context->buffer, source_struct, struct_size);
    }
    else
    {


      context->source = ((void*)0);
    }


  return context;
}
