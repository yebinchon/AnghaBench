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
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_FLT ; 
 int FUNC2 (struct type*) ; 
 char* FUNC3 (struct value*) ; 
 int /*<<< orphan*/  FUNC4 (struct value*) ; 
 struct type* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct value*) ; 

int
FUNC7 (struct value *arg1)
{
  int len;
  char *p;
  struct type *type1;

  FUNC0 (arg1);
  type1 = FUNC5 (FUNC4 (arg1));

  if (FUNC1 (type1) == TYPE_CODE_FLT)
    return 0 == FUNC6 (arg1);

  len = FUNC2 (type1);
  p = FUNC3 (arg1);

  while (--len >= 0)
    {
      if (*p++)
	break;
    }

  return len < 0;
}