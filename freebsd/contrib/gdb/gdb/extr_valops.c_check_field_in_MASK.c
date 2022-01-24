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
 struct type* FUNC0 (struct type*,int) ; 
 char* FUNC1 (struct type*,int) ; 
 char* FUNC2 (struct type*,int) ; 
 int FUNC3 (struct type*) ; 
 int FUNC4 (struct type*) ; 
 int FUNC5 (struct type*) ; 
 scalar_t__ FUNC6 (char const*,struct type*) ; 
 int FUNC7 (struct type*,int*,int*) ; 
 scalar_t__ FUNC8 (char*,char const*) ; 

__attribute__((used)) static int
FUNC9 (struct type *type, const char *name)
{
  int i;

  for (i = FUNC3 (type) - 1; i >= FUNC5 (type); i--)
    {
      char *t_field_name = FUNC1 (type, i);
      if (t_field_name && (FUNC8 (t_field_name, name) == 0))
	return 1;
    }

  /* C++: If it was not found as a data field, then try to
     return it as a pointer to a method.  */

  /* Destructors are a special case.  */
  if (FUNC6 (name, type))
    {
      int m_index, f_index;

      return FUNC7 (type, &m_index, &f_index);
    }

  for (i = FUNC4 (type) - 1; i >= 0; --i)
    {
      if (FUNC8 (FUNC2 (type, i), name) == 0)
	return 1;
    }

  for (i = FUNC5 (type) - 1; i >= 0; i--)
    if (FUNC9 (FUNC0 (type, i), name))
      return 1;

  return 0;
}