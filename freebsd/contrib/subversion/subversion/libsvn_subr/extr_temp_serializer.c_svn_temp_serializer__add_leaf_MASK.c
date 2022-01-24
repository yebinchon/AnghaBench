#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ svn_temp_serializer__context_t ;
typedef  int /*<<< orphan*/  apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void const* const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 

void
FUNC3(svn_temp_serializer__context_t *context,
                              const void * const * source_struct,
                              apr_size_t struct_size)
{
  const void *source = *source_struct;

  /* the serialized structure must be properly aligned */
  if (source)
    FUNC0(context);

  /* Store the offset at which the struct data that will the appended.
   * Write 0 for NULL pointers. */
  FUNC1(context, source_struct);

  /* finally, actually append the struct contents */
  if (*source_struct)
    FUNC2(context->buffer, source, struct_size);
}