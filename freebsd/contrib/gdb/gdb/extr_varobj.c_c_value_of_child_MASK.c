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
struct varobj {struct value* value; } ;
struct value {int dummy; } ;
struct type {int dummy; } ;
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 int FUNC0 (struct type*) ; 
#define  TYPE_CODE_ARRAY 131 
#define  TYPE_CODE_PTR 130 
#define  TYPE_CODE_STRUCT 129 
#define  TYPE_CODE_UNION 128 
 int /*<<< orphan*/  builtin_type_int ; 
 int /*<<< orphan*/  FUNC1 (struct value*,struct value**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct value**,struct value**,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct value*,struct value*,struct value**) ; 
 struct type* FUNC4 (struct type*) ; 
 struct type* FUNC5 (struct varobj*) ; 
 char* FUNC6 (struct varobj*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct value*) ; 
 struct value* FUNC8 (struct value*) ; 
 struct value* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct value* FUNC10 (struct value*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static struct value *
FUNC12 (struct varobj *parent, int index)
{
  struct value *value;
  struct value *temp;
  struct value *indval;
  struct type *type, *target;
  char *name;

  type = FUNC5 (parent);
  target = FUNC4 (type);
  name = FUNC6 (parent, index);
  temp = parent->value;
  value = NULL;

  if (temp != NULL)
    {
      switch (FUNC0 (type))
	{
	case TYPE_CODE_ARRAY:
#if 0
	  /* This breaks if the array lives in a (vector) register. */
	  value = value_slice (temp, index, 1);
	  temp = value_coerce_array (value);
	  gdb_value_ind (temp, &value);
#else
	  indval = FUNC9 (builtin_type_int, (LONGEST) index);
	  FUNC3 (temp, indval, &value);
#endif
	  break;

	case TYPE_CODE_STRUCT:
	case TYPE_CODE_UNION:
	  FUNC2 (NULL, &value, &temp, NULL, name, NULL,
				"vstructure");
	  break;

	case TYPE_CODE_PTR:
	  switch (FUNC0 (target))
	    {
	    case TYPE_CODE_STRUCT:
	    case TYPE_CODE_UNION:
	      FUNC2 (NULL, &value, &temp, NULL, name, NULL,
				    "vstructure");
	      break;

	    default:
	      FUNC1 (temp, &value);
	      break;
	    }
	  break;

	default:
	  break;
	}
    }

  if (value != NULL)
    FUNC7 (value);

  FUNC11 (name);
  return value;
}