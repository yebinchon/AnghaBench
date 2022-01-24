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
struct varobj {char* name; int index; int error; char* obj_name; int /*<<< orphan*/  type; int /*<<< orphan*/  root; struct varobj* parent; int /*<<< orphan*/ * value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct varobj*) ; 
 int /*<<< orphan*/  FUNC1 (struct varobj*) ; 
 struct varobj* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct varobj*,struct varobj*) ; 
 int /*<<< orphan*/  FUNC4 (struct varobj*) ; 
 int /*<<< orphan*/ * FUNC5 (struct varobj*,int) ; 
 int /*<<< orphan*/  FUNC6 (char**,char*,char*,char*) ; 

__attribute__((used)) static struct varobj *
FUNC7 (struct varobj *parent, int index, char *name)
{
  struct varobj *child;
  char *childs_name;

  child = FUNC2 ();

  /* name is allocated by name_of_child */
  child->name = name;
  child->index = index;
  child->value = FUNC5 (parent, index);
  if ((!FUNC0 (child) && child->value == NULL) || parent->error)
    child->error = 1;
  child->parent = parent;
  child->root = parent->root;
  FUNC6 (&childs_name, "%s.%s", parent->obj_name, name);
  child->obj_name = childs_name;
  FUNC1 (child);

  /* Save a pointer to this child in the parent */
  FUNC3 (parent, child);

  /* Note the type of this child */
  child->type = FUNC4 (child);

  return child;
}