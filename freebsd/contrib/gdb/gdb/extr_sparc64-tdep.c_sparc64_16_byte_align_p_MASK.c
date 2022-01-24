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
 int /*<<< orphan*/  FUNC0 (struct type*,int) ; 
 int FUNC1 (struct type*) ; 
 int FUNC2 (struct type*) ; 
 struct type* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct type*) ; 
 scalar_t__ FUNC5 (struct type*) ; 

__attribute__((used)) static int
FUNC6 (struct type *type)
{
  if (FUNC4 (type) && FUNC1 (type) == 16)
    return 1;

  if (FUNC5 (type))
    {
      int i;

      for (i = 0; i < FUNC2 (type); i++)
	{
	  struct type *subtype = FUNC3 (FUNC0 (type, i));

	  if (FUNC6 (subtype))
	    return 1;
	}
    }

  return 0;
}