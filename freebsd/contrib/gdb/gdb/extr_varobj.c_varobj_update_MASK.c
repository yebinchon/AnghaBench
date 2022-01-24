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
struct vstack {int dummy; } ;
struct varobj_child {struct varobj* child; struct varobj_child* next; } ;
struct varobj {int error; struct value* value; scalar_t__ updated; int /*<<< orphan*/  index; int /*<<< orphan*/  parent; struct varobj_child* children; TYPE_1__* root; } ;
struct value {int dummy; } ;
struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;
struct TYPE_2__ {struct varobj* rootvar; } ;

/* Variables and functions */
 int /*<<< orphan*/  deprecated_selected_frame ; 
 struct frame_info* FUNC0 (struct frame_id) ; 
 struct frame_id FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct value*,struct value*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct frame_info*) ; 
 scalar_t__ FUNC4 (struct varobj*) ; 
 int /*<<< orphan*/  FUNC5 (struct value*) ; 
 struct value* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct value* FUNC7 (struct varobj**,int*) ; 
 struct varobj* FUNC8 (struct vstack**) ; 
 int /*<<< orphan*/  FUNC9 (struct vstack**,struct varobj*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 struct varobj** FUNC11 (int) ; 

int
FUNC12 (struct varobj **varp, struct varobj ***changelist)
{
  int changed = 0;
  int type_changed;
  int i;
  int vleft;
  int error2;
  struct varobj *v;
  struct varobj **cv;
  struct varobj **templist = NULL;
  struct value *new;
  struct vstack *stack = NULL;
  struct vstack *result = NULL;
  struct frame_id old_fid;
  struct frame_info *fi;

  /* sanity check: have we been passed a pointer? */
  if (changelist == NULL)
    return -1;

  /*  Only root variables can be updated... */
  if ((*varp)->root->rootvar != *varp)
    /* Not a root var */
    return -1;

  /* Save the selected stack frame, since we will need to change it
     in order to evaluate expressions. */
  old_fid = FUNC1 (deprecated_selected_frame);

  /* Update the root variable. value_of_root can return NULL
     if the variable is no longer around, i.e. we stepped out of
     the frame in which a local existed. We are letting the 
     value_of_root variable dispose of the varobj if the type
     has changed. */
  type_changed = 1;
  new = FUNC7 (varp, &type_changed);
  if (new == NULL)
    {
      (*varp)->error = 1;
      return -1;
    }

  /* Initialize a stack for temporary results */
  FUNC9 (&result, NULL);

  /* If this is a "use_selected_frame" varobj, and its type has changed,
     them note that it's changed. */
  if (type_changed)
    {
      FUNC9 (&result, *varp);
      changed++;
    }
  /* If values are not equal, note that it's changed.
     There a couple of exceptions here, though.
     We don't want some types to be reported as "changed". */
  else if (FUNC4 (*varp) &&
	   ((*varp)->updated || !FUNC2 ((*varp)->value, new, &error2)))
    {
      FUNC9 (&result, *varp);
      (*varp)->updated = 0;
      changed++;
      /* error2 replaces var->error since this new value
         WILL replace the old one. */
      (*varp)->error = error2;
    }

  /* We must always keep around the new value for this root
     variable expression, or we lose the updated children! */
  FUNC5 ((*varp)->value);
  (*varp)->value = new;

  /* Initialize a stack */
  FUNC9 (&stack, NULL);

  /* Push the root's children */
  if ((*varp)->children != NULL)
    {
      struct varobj_child *c;
      for (c = (*varp)->children; c != NULL; c = c->next)
	FUNC9 (&stack, c->child);
    }

  /* Walk through the children, reconstructing them all. */
  v = FUNC8 (&stack);
  while (v != NULL)
    {
      /* Push any children */
      if (v->children != NULL)
	{
	  struct varobj_child *c;
	  for (c = v->children; c != NULL; c = c->next)
	    FUNC9 (&stack, c->child);
	}

      /* Update this variable */
      new = FUNC6 (v->parent, v->index);
      if (FUNC4 (v) && 
          (v->updated || !FUNC2 (v->value, new, &error2)))
	{
	  /* Note that it's changed */
	  FUNC9 (&result, v);
	  v->updated = 0;
	  changed++;
	}
      /* error2 replaces v->error since this new value
         WILL replace the old one. */
      v->error = error2;

      /* We must always keep new values, since children depend on it. */
      if (v->value != NULL)
	FUNC5 (v->value);
      v->value = new;

      /* Get next child */
      v = FUNC8 (&stack);
    }

  /* Alloc (changed + 1) list entries */
  /* FIXME: add a cleanup for the allocated list(s)
     because one day the select_frame called below can longjump */
  *changelist = FUNC11 ((changed + 1) * sizeof (struct varobj *));
  if (changed > 1)
    {
      templist = FUNC11 ((changed + 1) * sizeof (struct varobj *));
      cv = templist;
    }
  else
    cv = *changelist;

  /* Copy from result stack to list */
  vleft = changed;
  *cv = FUNC8 (&result);
  while ((*cv != NULL) && (vleft > 0))
    {
      vleft--;
      cv++;
      *cv = FUNC8 (&result);
    }
  if (vleft)
    FUNC10 ("varobj_update: assertion failed - vleft <> 0");

  if (changed > 1)
    {
      /* Now we revert the order. */
      for (i = 0; i < changed; i++)
	*(*changelist + i) = *(templist + changed - 1 - i);
      *(*changelist + changed) = NULL;
    }

  /* Restore selected frame */
  fi = FUNC0 (old_fid);
  if (fi)
    FUNC3 (fi);

  if (type_changed)
    return -2;
  else
    return changed;
}