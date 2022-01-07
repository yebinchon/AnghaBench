
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* buffer; } ;
typedef TYPE_1__ svn_temp_serializer__context_t ;
typedef scalar_t__ apr_size_t ;
struct TYPE_5__ {scalar_t__ len; scalar_t__ blocksize; } ;


 scalar_t__ APR_ALIGN_DEFAULT (scalar_t__) ;
 int svn_stringbuf_ensure (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static void
align_buffer_end(svn_temp_serializer__context_t *context)
{
  apr_size_t current_len = context->buffer->len;
  apr_size_t aligned_len = APR_ALIGN_DEFAULT(current_len);

  if (aligned_len + 1 > context->buffer->blocksize)
    svn_stringbuf_ensure(context->buffer, aligned_len);

   context->buffer->len = aligned_len;
}
