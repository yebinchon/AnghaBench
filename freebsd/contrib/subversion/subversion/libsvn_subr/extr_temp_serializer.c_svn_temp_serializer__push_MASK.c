#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_4__* buffer; TYPE_2__* source; int /*<<< orphan*/  pool; TYPE_2__* recycler; } ;
typedef  TYPE_1__ svn_temp_serializer__context_t ;
struct TYPE_9__ {struct TYPE_9__* upper; int /*<<< orphan*/  target_offset; void const* source_struct; } ;
typedef  TYPE_2__ source_stack_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
struct TYPE_10__ {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void const* const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,void const*,int /*<<< orphan*/ ) ; 

void
FUNC4(svn_temp_serializer__context_t *context,
                          const void * const * source_struct,
                          apr_size_t struct_size)
{
  const void *source = *source_struct;
  source_stack_t *new;

  /* recycle an old entry or create a new one for the structure stack */
  if (context->recycler)
    {
      new = context->recycler;
      context->recycler = new->upper;
    }
  else
    new = FUNC1(context->pool, sizeof(*new));

  /* the serialized structure must be properly aligned */
  if (source)
    FUNC0(context);

  /* Store the offset at which the struct data that will the appended.
   * Write 0 for NULL pointers. */
  FUNC2(context, source_struct);

  /* store source and target information */
  new->source_struct = source;
  new->target_offset = context->buffer->len;

  /* put the new entry onto the stack*/
  new->upper = context->source;
  context->source = new;

  /* finally, actually append the new struct
   * (so we can now manipulate pointers within it) */
  if (*source_struct)
    FUNC3(context->buffer, source, struct_size);
}