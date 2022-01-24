#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ svn_temp_serializer__context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void const* const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 

void
FUNC3(svn_temp_serializer__context_t *context,
                                const char * const * s)
{
  const char *string = *s;

  /* Store the offset at which the string data that will the appended.
   * Write 0 for NULL pointers. Strings don't need special alignment. */
  FUNC0(context, (const void *const *)s);

  /* append the string data */
  if (string)
    FUNC2(context->buffer, string, FUNC1(string) + 1);
}