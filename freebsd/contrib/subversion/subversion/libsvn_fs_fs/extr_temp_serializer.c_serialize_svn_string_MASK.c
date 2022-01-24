#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_temp_serializer__context_t ;
struct TYPE_3__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void const* const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const* const*,int) ; 

__attribute__((used)) static void
FUNC3(svn_temp_serializer__context_t *context,
                     const svn_string_t * const *s)
{
  const svn_string_t *string = *s;

  /* Nothing to do for NULL string references. */
  if (string == NULL)
    return;

  FUNC2(context, (const void * const *)s, sizeof(**s));

  /* the "string" content may actually be arbitrary binary data.
   * Thus, we cannot use svn_temp_serializer__add_string. */
  FUNC0(context,
                                (const void * const *)&string->data,
                                string->len + 1);

  /* back to the caller's nesting level */
  FUNC1(context);
}