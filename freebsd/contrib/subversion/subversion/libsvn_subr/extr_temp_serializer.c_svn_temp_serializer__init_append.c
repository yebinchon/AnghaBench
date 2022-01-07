
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * recycler; TYPE_1__* source; TYPE_4__* buffer; int * pool; } ;
typedef TYPE_2__ svn_temp_serializer__context_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {scalar_t__ blocksize; scalar_t__ len; void* data; } ;
struct TYPE_5__ {int target_offset; int * upper; void* source_struct; } ;


 void* apr_palloc (int *,int) ;
 TYPE_4__* svn_stringbuf_create_ensure (int ,int *) ;

svn_temp_serializer__context_t *
svn_temp_serializer__init_append(void *buffer,
                                 void *source_struct,
                                 apr_size_t currently_used,
                                 apr_size_t currently_allocated,
                                 apr_pool_t *pool)
{

  apr_size_t init_size = currently_allocated < currently_used
                       ? currently_used
                       : currently_allocated;


  svn_temp_serializer__context_t *context = apr_palloc(pool, sizeof(*context));
  context->pool = pool;


  context->buffer = svn_stringbuf_create_ensure(0, pool);
  context->buffer->data = buffer;
  context->buffer->len = currently_used;
  context->buffer->blocksize = init_size;


  context->source = apr_palloc(pool, sizeof(*context->source));
  context->source->source_struct = source_struct;
  context->source->target_offset = (char *)source_struct - (char *)buffer;
  context->source->upper = ((void*)0);


  context->recycler = ((void*)0);


  return context;
}
