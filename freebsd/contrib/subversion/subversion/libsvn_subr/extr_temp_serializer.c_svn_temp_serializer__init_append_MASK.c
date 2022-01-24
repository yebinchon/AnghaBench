#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * recycler; TYPE_1__* source; TYPE_4__* buffer; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_2__ svn_temp_serializer__context_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_7__ {scalar_t__ blocksize; scalar_t__ len; void* data; } ;
struct TYPE_5__ {int target_offset; int /*<<< orphan*/ * upper; void* source_struct; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_temp_serializer__context_t *
FUNC2(void *buffer,
                                 void *source_struct,
                                 apr_size_t currently_used,
                                 apr_size_t currently_allocated,
                                 apr_pool_t *pool)
{
  /* determine the current memory buffer capacity */
  apr_size_t init_size = currently_allocated < currently_used
                       ? currently_used
                       : currently_allocated;

  /* create the serialization context and initialize it */
  svn_temp_serializer__context_t *context = FUNC0(pool, sizeof(*context));
  context->pool = pool;

  /* use BUFFER as serialization target */
  context->buffer = FUNC1(0, pool);
  context->buffer->data = buffer;
  context->buffer->len = currently_used;
  context->buffer->blocksize = init_size;

  /* SOURCE_STRUCT is our serialization root */
  context->source = FUNC0(pool, sizeof(*context->source));
  context->source->source_struct = source_struct;
  context->source->target_offset = (char *)source_struct - (char *)buffer;
  context->source->upper = NULL;

  /* initialize the RECYCLER */
  context->recycler = NULL;

  /* done */
  return context;
}