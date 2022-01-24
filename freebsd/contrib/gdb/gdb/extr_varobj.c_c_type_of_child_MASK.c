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
struct varobj {struct type* type; } ;
struct type {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct type*) ; 
#define  TYPE_CODE_ARRAY 131 
#define  TYPE_CODE_PTR 130 
#define  TYPE_CODE_STRUCT 129 
#define  TYPE_CODE_UNION 128 
 struct type* FUNC1 (struct type*) ; 
 struct type* FUNC2 (struct type*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct varobj*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static struct type *
FUNC6 (struct varobj *parent, int index)
{
  struct type *type;
  char *name = FUNC3 (parent, index);

  switch (FUNC0 (parent->type))
    {
    case TYPE_CODE_ARRAY:
      type = FUNC1 (parent->type);
      break;

    case TYPE_CODE_STRUCT:
    case TYPE_CODE_UNION:
      type = FUNC2 (parent->type, name, 0);
      break;

    case TYPE_CODE_PTR:
      switch (FUNC0 (FUNC1 (parent->type)))
	{
	case TYPE_CODE_STRUCT:
	case TYPE_CODE_UNION:
	  type = FUNC2 (parent->type, name, 0);
	  break;

	default:
	  type = FUNC1 (parent->type);
	  break;
	}
      break;

    default:
      /* This should not happen as only the above types have children */
      FUNC4 ("Child of parent whose type does not allow children");
      /* FIXME: Can we still go on? */
      type = NULL;
      break;
    }

  FUNC5 (name);
  return type;
}