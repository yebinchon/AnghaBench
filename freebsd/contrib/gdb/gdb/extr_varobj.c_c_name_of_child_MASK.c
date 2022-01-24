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
struct varobj {int name; } ;
struct type {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct type*) ; 
#define  TYPE_CODE_ARRAY 131 
#define  TYPE_CODE_PTR 130 
#define  TYPE_CODE_STRUCT 129 
#define  TYPE_CODE_UNION 128 
 char* FUNC1 (struct type*,int) ; 
 struct type* FUNC2 (struct type*) ; 
 struct type* FUNC3 (struct varobj*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char**,char*,int) ; 
 char* FUNC7 (char*) ; 

__attribute__((used)) static char *
FUNC8 (struct varobj *parent, int index)
{
  struct type *type;
  struct type *target;
  char *name;
  char *string;

  type = FUNC3 (parent);
  target = FUNC2 (type);

  switch (FUNC0 (type))
    {
    case TYPE_CODE_ARRAY:
      FUNC6 (&name, "%d", index);
      break;

    case TYPE_CODE_STRUCT:
    case TYPE_CODE_UNION:
      string = FUNC1 (type, index);
      name = FUNC4 (string, FUNC5 (string));
      break;

    case TYPE_CODE_PTR:
      switch (FUNC0 (target))
	{
	case TYPE_CODE_STRUCT:
	case TYPE_CODE_UNION:
	  string = FUNC1 (target, index);
	  name = FUNC4 (string, FUNC5 (string));
	  break;

	default:
	  FUNC6 (&name, "*%s", parent->name);
	  break;
	}
      break;

    default:
      /* This should not happen */
      name = FUNC7 ("???");
    }

  return name;
}