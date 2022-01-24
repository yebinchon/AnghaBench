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
struct varobj {int /*<<< orphan*/  type; } ;
struct value {int dummy; } ;
struct ui_file {int dummy; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct varobj*) ; 
 int /*<<< orphan*/  FUNC1 (struct value*) ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 struct cleanup* FUNC3 (struct ui_file*) ; 
 struct ui_file* FUNC4 () ; 
 int /*<<< orphan*/  not_lval ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct ui_file*,int) ; 
 char* FUNC6 (struct ui_file*,long*) ; 
 struct value* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

char *
FUNC8 (struct varobj *var)
{
  struct value *val;
  struct cleanup *old_chain;
  struct ui_file *stb;
  char *thetype;
  long length;

  /* For the "fake" variables, do not return a type. (It's type is
     NULL, too.) */
  if (FUNC0 (var))
    return NULL;

  stb = FUNC4 ();
  old_chain = FUNC3 (stb);

  /* To print the type, we simply create a zero ``struct value *'' and
     cast it to our type. We then typeprint this variable. */
  val = FUNC7 (var->type, not_lval);
  FUNC5 (FUNC1 (val), "", stb, -1);

  thetype = FUNC6 (stb, &length);
  FUNC2 (old_chain);
  return thetype;
}