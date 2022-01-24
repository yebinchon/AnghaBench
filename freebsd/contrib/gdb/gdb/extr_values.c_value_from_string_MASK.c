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
struct TYPE_2__ {int string_lower_bound; int /*<<< orphan*/ * string_char_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 struct value* FUNC1 (struct type*) ; 
 int /*<<< orphan*/  builtin_type_int ; 
 struct type* FUNC2 (struct type*,int /*<<< orphan*/ ,struct type*) ; 
 struct type* FUNC3 (struct type*,int /*<<< orphan*/ ,int,int) ; 
 TYPE_1__* current_language ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (char*) ; 

struct value *
FUNC6 (char *ptr)
{
  struct value *val;
  int len = FUNC5 (ptr);
  int lowbound = current_language->string_lower_bound;
  struct type *rangetype =
  FUNC3 ((struct type *) NULL,
		     builtin_type_int,
		     lowbound, len + lowbound - 1);
  struct type *stringtype =
  FUNC2 ((struct type *) NULL,
		     *current_language->string_char_type,
		     rangetype);

  val = FUNC1 (stringtype);
  FUNC4 (FUNC0 (val), ptr, len);
  return val;
}