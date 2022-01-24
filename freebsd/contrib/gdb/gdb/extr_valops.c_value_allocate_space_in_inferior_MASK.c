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
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  NAME_OF_MALLOC ; 
 int /*<<< orphan*/  builtin_type_int ; 
 struct value* FUNC0 (struct value*,int,struct value**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct value* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  target_has_execution ; 
 struct value* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct value*) ; 

struct value *
FUNC5 (int len)
{
  struct value *blocklen;
  struct value *val = FUNC2 (NAME_OF_MALLOC);

  blocklen = FUNC3 (builtin_type_int, (LONGEST) len);
  val = FUNC0 (val, 1, &blocklen);
  if (FUNC4 (val))
    {
      if (!target_has_execution)
	FUNC1 ("No memory available to program now: you need to start the target first");
      else
	FUNC1 ("No memory available to program: call to malloc failed");
    }
  return val;
}