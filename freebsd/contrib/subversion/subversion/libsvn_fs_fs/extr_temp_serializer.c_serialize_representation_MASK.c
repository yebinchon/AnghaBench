#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_temp_serializer__context_t ;
typedef  int /*<<< orphan*/  representation_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void const* const*,int) ; 

__attribute__((used)) static void
FUNC1(svn_temp_serializer__context_t *context,
                         representation_t * const *representation)
{
  const representation_t * rep = *representation;
  if (rep == NULL)
    return;

  /* serialize the representation struct itself */
  FUNC0(context,
                                (const void * const *)representation,
                                sizeof(**representation));
}