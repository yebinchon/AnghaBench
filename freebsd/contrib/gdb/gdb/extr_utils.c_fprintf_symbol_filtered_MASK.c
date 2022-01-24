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
struct ui_file {int dummy; } ;
typedef  enum language { ____Placeholder_language } language ;

/* Variables and functions */
 int /*<<< orphan*/  demangle ; 
 int /*<<< orphan*/  FUNC0 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4 (struct ui_file *stream, char *name,
			 enum language lang, int arg_mode)
{
  char *demangled;

  if (name != NULL)
    {
      /* If user wants to see raw output, no problem.  */
      if (!demangle)
	{
	  FUNC0 (name, stream);
	}
      else
	{
	  demangled = FUNC2 (FUNC1 (lang), name, arg_mode);
	  FUNC0 (demangled ? demangled : name, stream);
	  if (demangled != NULL)
	    {
	      FUNC3 (demangled);
	    }
	}
    }
}