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
struct varobj {struct varobj* parent; } ;
struct type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct varobj*) ; 
 int FUNC1 (struct type*) ; 
#define  TYPE_CODE_STRUCT 129 
#define  TYPE_CODE_UNION 128 
 struct type* FUNC2 (struct type*,int) ; 
 int FUNC3 (struct type*) ; 
 struct type* FUNC4 (struct varobj*,int) ; 
 char* FUNC5 (struct varobj*,int) ; 
 struct type* FUNC6 (struct varobj*) ; 
 struct type* FUNC7 (struct type*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static struct type *
FUNC9 (struct varobj *parent, int index)
{
  struct type *type, *t;

  if (FUNC0 (parent))
    {
      /* Looking for the type of a child of public, private, or protected. */
      t = FUNC6 (parent->parent);
    }
  else
    t = FUNC6 (parent);

  type = NULL;
  switch (FUNC1 (t))
    {
    case TYPE_CODE_STRUCT:
    case TYPE_CODE_UNION:
      if (FUNC0 (parent))
	{
	  char *name = FUNC5 (parent, index);
	  type = FUNC7 (t, name, 0);
	  FUNC8 (name);
	}
      else if (index < FUNC3 (t))
	type = FUNC2 (t, index);
      else
	{
	  /* special */
	  return NULL;
	}
      break;

    default:
      break;
    }

  if (type == NULL)
    return FUNC4 (parent, index);

  return type;
}