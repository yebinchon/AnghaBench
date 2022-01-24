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
struct objfile {int dummy; } ;
struct nextfield {struct nextfield* next; } ;
struct field_info {struct nextfield* list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,struct objfile*) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nextfield*) ; 
 int /*<<< orphan*/  FUNC3 (struct nextfield*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct field_info*,char**,struct type*,struct objfile*) ; 
 int /*<<< orphan*/  FUNC5 (struct field_info*,char**,char*,struct type*,struct objfile*) ; 
 int /*<<< orphan*/  xfree ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7 (struct field_info *fip, char **pp, struct type *type,
		    struct objfile *objfile)
{
  char *p;
  struct nextfield *new;

  /* We better set p right now, in case there are no fields at all...    */

  p = *pp;

  /* Read each data member type until we find the terminating ';' at the end of
     the data member list, or break for some other reason such as finding the
     start of the member function list. */
  /* Stab string for structure/union does not end with two ';' in
     SUN C compiler 5.3 i.e. F6U2, hence check for end of string. */

  while (**pp != ';' && **pp != '\0')
    {
      FUNC0 (pp, objfile);
      /* Get space to record the next field's data.  */
      new = (struct nextfield *) FUNC6 (sizeof (struct nextfield));
      FUNC2 (xfree, new);
      FUNC3 (new, 0, sizeof (struct nextfield));
      new->next = fip->list;
      fip->list = new;

      /* Get the field name.  */
      p = *pp;

      /* If is starts with CPLUS_MARKER it is a special abbreviation,
         unless the CPLUS_MARKER is followed by an underscore, in
         which case it is just the name of an anonymous type, which we
         should handle like any other type name.  */

      if (FUNC1 (p[0]) && p[1] != '_')
	{
	  if (!FUNC4 (fip, pp, type, objfile))
	    return 0;
	  continue;
	}

      /* Look for the ':' that separates the field name from the field
         values.  Data members are delimited by a single ':', while member
         functions are delimited by a pair of ':'s.  When we hit the member
         functions (if any), terminate scan loop and return. */

      while (*p != ':' && *p != '\0')
	{
	  p++;
	}
      if (*p == '\0')
	return 0;

      /* Check to see if we have hit the member functions yet.  */
      if (p[1] == ':')
	{
	  break;
	}
      FUNC5 (fip, pp, p, type, objfile);
    }
  if (p[0] == ':' && p[1] == ':')
    {
      /* (the deleted) chill the list of fields: the last entry (at
         the head) is a partially constructed entry which we now
         scrub. */
      fip->list = fip->list->next;
    }
  return 1;
}