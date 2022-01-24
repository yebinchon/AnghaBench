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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 
 unsigned int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,char const*,unsigned int) ; 
 char* FUNC4 (struct type const*) ; 

int
FUNC5 (const char *name, const struct type *type)
{
  /* destructors are a special case.  */

  if (name[0] == '~')
    {
      char *dname = FUNC4 (type);
      char *cp = FUNC1 (dname, '<');
      unsigned int len;

      /* Do not compare the template part for template classes.  */
      if (cp == NULL)
	len = FUNC2 (dname);
      else
	len = cp - dname;
      if (FUNC2 (name + 1) != len || FUNC3 (dname, name + 1, len) != 0)
	FUNC0 ("name of destructor must equal name of class");
      else
	return 1;
    }
  return 0;
}