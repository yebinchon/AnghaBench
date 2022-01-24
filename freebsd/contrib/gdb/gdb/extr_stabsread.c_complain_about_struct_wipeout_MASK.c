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
 int FUNC0 (struct type*) ; 
#define  TYPE_CODE_ENUM 130 
#define  TYPE_CODE_STRUCT 129 
#define  TYPE_CODE_UNION 128 
 char* FUNC1 (struct type*) ; 
 char* FUNC2 (struct type*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  symfile_complaints ; 

__attribute__((used)) static void 
FUNC4 (struct type *type)
{
  char *name = "";
  char *kind = "";

  if (FUNC2 (type))
    {
      name = FUNC2 (type);
      switch (FUNC0 (type))
        {
        case TYPE_CODE_STRUCT: kind = "struct "; break;
        case TYPE_CODE_UNION:  kind = "union ";  break;
        case TYPE_CODE_ENUM:   kind = "enum ";   break;
        default: kind = "";
        }
    }
  else if (FUNC1 (type))
    {
      name = FUNC1 (type);
      kind = "";
    }
  else
    {
      name = "<unknown>";
      kind = "";
    }

  FUNC3 (&symfile_complaints,
	     "struct/union type gets multiply defined: %s%s", kind, name);
}