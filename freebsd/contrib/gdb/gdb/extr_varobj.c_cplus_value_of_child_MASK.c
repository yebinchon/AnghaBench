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
struct varobj {struct value* value; struct varobj* parent; } ;
struct value {int dummy; } ;
struct type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct varobj*) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ TYPE_CODE_REF ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 scalar_t__ TYPE_CODE_UNION ; 
 int /*<<< orphan*/  FUNC2 (struct type*,int) ; 
 int FUNC3 (struct type*) ; 
 struct type* FUNC4 (struct value*) ; 
 struct value* FUNC5 (struct varobj*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct value*,struct value**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct value**,struct value**,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*) ; 
 struct type* FUNC8 (struct varobj*) ; 
 char* FUNC9 (struct varobj*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct value*) ; 
 struct value* FUNC11 (int /*<<< orphan*/ ,struct value*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static struct value *
FUNC13 (struct varobj *parent, int index)
{
  struct type *type;
  struct value *value;

  if (FUNC0 (parent))
    type = FUNC8 (parent->parent);
  else
    type = FUNC8 (parent);

  value = NULL;

  if (((FUNC1 (type)) == TYPE_CODE_STRUCT) ||
      ((FUNC1 (type)) == TYPE_CODE_UNION))
    {
      if (FUNC0 (parent))
	{
	  char *name;
	  struct value *temp = parent->parent->value;

	  if (temp == NULL)
	    return NULL;

	  name = FUNC9 (parent, index);
	  FUNC7 (NULL, &value, &temp, NULL, name, NULL,
				"cplus_structure");
	  if (value != NULL)
	    FUNC10 (value);

	  FUNC12 (name);
	}
      else if (index >= FUNC3 (type))
	{
	  /* public, private, or protected */
	  return NULL;
	}
      else
	{
	  /* Baseclass */
	  if (parent->value != NULL)
	    {
	      struct value *temp = NULL;

	      if (FUNC1 (FUNC4 (parent->value)) == TYPE_CODE_PTR
		  || FUNC1 (FUNC4 (parent->value)) == TYPE_CODE_REF)
		{
		  if (!FUNC6 (parent->value, &temp))
		    return NULL;
		}
	      else
		temp = parent->value;

	      if (temp != NULL)
		{
		  value = FUNC11 (FUNC2 (type, index), temp);
		  FUNC10 (value);
		}
	      else
		{
		  /* We failed to evaluate the parent's value, so don't even
		     bother trying to evaluate this child. */
		  return NULL;
		}
	    }
	}
    }

  if (value == NULL)
    return FUNC5 (parent, index);

  return value;
}