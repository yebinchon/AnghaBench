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
struct TYPE_2__ {int string_lower_bound; scalar_t__ c_style_arrays; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct value* FUNC2 (struct type*) ; 
 int /*<<< orphan*/  builtin_type_int ; 
 struct type* FUNC3 (struct type*,int /*<<< orphan*/ ,int,int) ; 
 struct type* FUNC4 (struct type*,struct type*) ; 
 TYPE_1__* current_language ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 struct value* FUNC6 (struct type*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

struct value *
FUNC8 (char *ptr, int len)
{
  struct value *val;
  int lowbound = current_language->string_lower_bound;
  struct type *rangetype = FUNC3 ((struct type *) NULL,
					      builtin_type_int,
					      lowbound, len + lowbound - 1);
  struct type *stringtype
  = FUNC4 ((struct type *) NULL, rangetype);
  CORE_ADDR addr;

  if (current_language->c_style_arrays == 0)
    {
      val = FUNC2 (stringtype);
      FUNC5 (FUNC0 (val), ptr, len);
      return val;
    }


  /* Allocate space to store the string in the inferior, and then
     copy LEN bytes from PTR in gdb to that address in the inferior. */

  addr = FUNC1 (len);
  FUNC7 (addr, ptr, len);

  val = FUNC6 (stringtype, addr, NULL);
  return (val);
}