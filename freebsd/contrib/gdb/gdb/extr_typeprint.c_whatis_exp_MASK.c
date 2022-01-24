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
struct value {int dummy; } ;
struct type {int dummy; } ;
struct expression {int dummy; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_CLASS ; 
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ TYPE_CODE_REF ; 
 struct type* FUNC1 (struct type*) ; 
 struct type* FUNC2 (struct value*) ; 
 struct value* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cleanup*) ; 
 struct value* FUNC5 (struct expression*) ; 
 int /*<<< orphan*/  free_current_contents ; 
 int /*<<< orphan*/  gdb_stdout ; 
 struct type* FUNC6 (struct type*) ; 
 struct type* FUNC7 (struct type*) ; 
 struct cleanup* FUNC8 (int /*<<< orphan*/ ,struct expression**) ; 
 scalar_t__ objectprint ; 
 struct expression* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct type*,char*,int /*<<< orphan*/ ,int) ; 
 struct type* FUNC12 (struct value*,int*,int*,int*) ; 
 struct type* FUNC13 (struct value*,int*,int*,int*) ; 

__attribute__((used)) static void
FUNC14 (char *exp, int show)
{
  struct expression *expr;
  struct value *val;
  struct cleanup *old_chain = NULL;
  struct type *real_type = NULL;
  struct type *type;
  int full = 0;
  int top = -1;
  int using_enc = 0;

  if (exp)
    {
      expr = FUNC9 (exp);
      old_chain = FUNC8 (free_current_contents, &expr);
      val = FUNC5 (expr);
    }
  else
    val = FUNC3 (0);

  type = FUNC2 (val);

  if (objectprint)
    {
      if (((FUNC0 (type) == TYPE_CODE_PTR) ||
           (FUNC0 (type) == TYPE_CODE_REF))
          &&
          (FUNC0 (FUNC1 (type)) == TYPE_CODE_CLASS))
        {
          real_type = FUNC12 (val, &full, &top, &using_enc);
          if (real_type)
            {
              if (FUNC0 (type) == TYPE_CODE_PTR)
                real_type = FUNC6 (real_type);
              else
                real_type = FUNC7 (real_type);
            }
        }
      else if (FUNC0 (type) == TYPE_CODE_CLASS)
  real_type = FUNC13 (val, &full, &top, &using_enc);
    }

  FUNC10 ("type = ");

  if (real_type)
    {
      FUNC10 ("/* real type = ");
      FUNC11 (real_type, "", gdb_stdout, -1);
      if (! full)
        FUNC10 (" (incomplete object)");
      FUNC10 (" */\n");    
    }

  FUNC11 (type, "", gdb_stdout, show);
  FUNC10 ("\n");

  if (exp)
    FUNC4 (old_chain);
}