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
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;

/* Variables and functions */
 int SCM_EOL ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 int /*<<< orphan*/  builtin_type_int ; 
 int /*<<< orphan*/  builtin_type_scm ; 
 struct value* FUNC0 (struct value*,int,struct value**) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/ * expression_context_block ; 
 struct value* FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 struct symbol* FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,struct symtab**) ; 
 int FUNC5 (char*) ; 
 struct value* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct value*) ; 
 struct value* FUNC8 (int /*<<< orphan*/ ,int) ; 
 struct value* FUNC9 (struct value*) ; 
 int /*<<< orphan*/  FUNC10 (struct value*) ; 
 struct value* FUNC11 (struct symbol*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static struct value *
FUNC13 (char *str)
{
  struct value *args[3];
  int len = FUNC5 (str);
  struct value *func;
  struct value *val;
  struct symbol *sym;
  args[0] = FUNC6 (len);
  args[1] = FUNC8 (builtin_type_int, len);
  FUNC12 (FUNC7 (args[0]), str, len);

  if (FUNC3 ()
      && (sym = FUNC4 ("env",
			       expression_context_block,
			       VAR_DOMAIN, (int *) NULL,
			       (struct symtab **) NULL)) != NULL)
    args[2] = FUNC11 (sym, expression_context_block);
  else
    /* FIXME in this case, we should try lookup_symbol first */
    args[2] = FUNC8 (builtin_type_scm, SCM_EOL);

  func = FUNC2 ("scm_lookup_cstr");
  val = FUNC0 (func, 3, args);
  if (!FUNC10 (val))
    return FUNC9 (val);

  sym = FUNC4 (str,
		       expression_context_block,
		       VAR_DOMAIN, (int *) NULL,
		       (struct symtab **) NULL);
  if (sym)
    return FUNC11 (sym, NULL);
  FUNC1 ("No symbol \"%s\" in current context.", str);
}