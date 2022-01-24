#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct value {int dummy; } ;
struct type {int dummy; } ;
struct TYPE_2__ {int string_lower_bound; } ;

/* Variables and functions */
 struct value* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  builtin_type_int ; 
 int /*<<< orphan*/  FUNC1 (struct type*,struct type*,struct type*) ; 
 struct type* FUNC2 (struct type*,int /*<<< orphan*/ ,int,int) ; 
 TYPE_1__* current_language ; 

struct value *
FUNC3 (struct type *type, int count)
{
  int low_bound = current_language->string_lower_bound;		/* ??? */
  /* FIXME-type-allocation: need a way to free this type when we are
     done with it.  */
  struct type *range_type
  = FUNC2 ((struct type *) NULL, builtin_type_int,
		       low_bound, count + low_bound - 1);
  /* FIXME-type-allocation: need a way to free this type when we are
     done with it.  */
  return FUNC0 (FUNC1 ((struct type *) NULL,
					    type, range_type));
}