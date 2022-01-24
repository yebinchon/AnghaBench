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
struct reggroups {struct reggroup_el* first; } ;
struct reggroup_el {struct reggroup* group; struct reggroup_el* next; } ;
struct reggroup {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 struct reggroups default_groups ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct reggroups* FUNC1 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reggroups_data ; 

struct reggroup *
FUNC2 (struct gdbarch *gdbarch, struct reggroup *last)
{
  struct reggroups *groups;
  struct reggroup_el *el;

  /* Don't allow this function to be called during architecture
     creation.  If there are no groups, use the default groups list.  */
  groups = FUNC1 (gdbarch, reggroups_data);
  FUNC0 (groups != NULL);
  if (groups->first == NULL)
    groups = &default_groups;

  /* Return the first/next reggroup.  */
  if (last == NULL)
    return groups->first->group;
  for (el = groups->first; el != NULL; el = el->next)
    {
      if (el->group == last)
	{
	  if (el->next != NULL)
	    return el->next->group;
	  else
	    return NULL;
	}
    }
  return NULL;
}