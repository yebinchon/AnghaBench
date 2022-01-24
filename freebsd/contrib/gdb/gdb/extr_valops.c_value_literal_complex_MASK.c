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
struct value {int dummy; } ;
struct type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 struct type* FUNC1 (struct type*) ; 
 int /*<<< orphan*/  FUNC2 (struct value*) ; 
 scalar_t__ FUNC3 (struct value*) ; 
 struct value* FUNC4 (struct type*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 struct value* FUNC6 (struct type*,struct value*) ; 

struct value *
FUNC7 (struct value *arg1, struct value *arg2, struct type *type)
{
  struct value *val;
  struct type *real_type = FUNC1 (type);

  val = FUNC4 (type);
  arg1 = FUNC6 (real_type, arg1);
  arg2 = FUNC6 (real_type, arg2);

  FUNC5 (FUNC3 (val),
	  FUNC2 (arg1), FUNC0 (real_type));
  FUNC5 (FUNC3 (val) + FUNC0 (real_type),
	  FUNC2 (arg2), FUNC0 (real_type));
  return val;
}