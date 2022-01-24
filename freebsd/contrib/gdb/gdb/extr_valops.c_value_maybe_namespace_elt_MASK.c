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
struct symbol {int dummy; } ;
typedef  enum noside { ____Placeholder_noside } noside ;

/* Variables and functions */
 int EVAL_AVOID_SIDE_EFFECTS ; 
 scalar_t__ LOC_TYPEDEF ; 
 scalar_t__ FUNC0 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC1 (struct symbol*) ; 
 char* FUNC2 (struct type const*) ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 struct value* FUNC3 (int /*<<< orphan*/ ) ; 
 struct symbol* FUNC4 (char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct value* FUNC6 (struct symbol*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct value *
FUNC7 (const struct type *curtype,
			   char *name,
			   enum noside noside)
{
  const char *namespace_name = FUNC2 (curtype);
  struct symbol *sym;

  sym = FUNC4 (namespace_name, name, NULL,
				    FUNC5 (0), VAR_DOMAIN,
				    NULL);

  if (sym == NULL)
    return NULL;
  else if ((noside == EVAL_AVOID_SIDE_EFFECTS)
	   && (FUNC0 (sym) == LOC_TYPEDEF))
    return FUNC3 (FUNC1 (sym));
  else
    return FUNC6 (sym, FUNC5 (0));
}