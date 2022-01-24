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
struct varobj {scalar_t__ format; int /*<<< orphan*/ * value; int /*<<< orphan*/  num_children; } ;
struct ui_file {int dummy; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  TYPE_CODE_ARRAY 130 
#define  TYPE_CODE_STRUCT 129 
#define  TYPE_CODE_UNION 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ui_file*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cleanup*) ; 
 int /*<<< orphan*/ * format_code ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct varobj*) ; 
 struct cleanup* FUNC6 (struct ui_file*) ; 
 struct ui_file* FUNC7 () ; 
 char* FUNC8 (struct ui_file*,long*) ; 
 int /*<<< orphan*/  FUNC9 (char**,char*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (char*) ; 

__attribute__((used)) static char *
FUNC11 (struct varobj *var)
{
  /* BOGUS: if val_print sees a struct/class, it will print out its
     children instead of "{...}" */

  switch (FUNC0 (FUNC5 (var)))
    {
    case TYPE_CODE_STRUCT:
    case TYPE_CODE_UNION:
      return FUNC10 ("{...}");
      /* break; */

    case TYPE_CODE_ARRAY:
      {
	char *number;
	FUNC9 (&number, "[%d]", var->num_children);
	return (number);
      }
      /* break; */

    default:
      {
	if (var->value == NULL)
	  {
	    /* This can happen if we attempt to get the value of a struct
	       member when the parent is an invalid pointer. This is an
	       error condition, so we should tell the caller. */
	    return NULL;
	  }
	else
	  {
	    long dummy;
	    struct ui_file *stb = FUNC7 ();
	    struct cleanup *old_chain = FUNC6 (stb);
	    char *thevalue;

	    if (FUNC1 (var->value))
	      FUNC4 (var->value);
	    FUNC2 (var->value, stb,
			      format_code[(int) var->format], 1, 0, 0);
	    thevalue = FUNC8 (stb, &dummy);
	    FUNC3 (old_chain);
	return thevalue;
      }
      }
    }
}