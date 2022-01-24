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
struct type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_FLT ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 scalar_t__ TYPE_CODE_UNION ; 
 struct type* FUNC1 (struct type*,int) ; 
 int FUNC2 (struct type*) ; 
 int FUNC3 (struct type*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct type*) ; 
 scalar_t__ FUNC6 (struct type*) ; 

__attribute__((used)) static int
FUNC7 (struct type *type)
{
  int alignment;

  if (FUNC5 (type)
      || FUNC6 (type)
      || FUNC0 (type) == TYPE_CODE_FLT)
    alignment = FUNC2 (type);
  else if (FUNC0 (type) == TYPE_CODE_STRUCT
           || FUNC0 (type) == TYPE_CODE_UNION)
    {
      int i;

      alignment = 1;
      for (i = 0; i < FUNC3 (type); i++)
        {
          int field_alignment = FUNC7 (FUNC1 (type, i));

          if (field_alignment > alignment)
            alignment = field_alignment;
        }
    }
  else
    alignment = 1;

  /* Check that everything we ever return is a power of two.  Lots of
     code doesn't want to deal with aligning things to arbitrary
     boundaries.  */
  FUNC4 ((alignment & (alignment - 1)) == 0);

  return alignment;
}