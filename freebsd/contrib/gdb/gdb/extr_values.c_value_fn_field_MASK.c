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
struct minimal_symbol {int dummy; } ;
struct fn_field {int dummy; } ;
typedef  int /*<<< orphan*/  VALUE_ADDRESS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC2 (struct minimal_symbol*) ; 
 char* FUNC3 (struct fn_field*,int) ; 
 struct type* FUNC4 (struct fn_field*,int) ; 
 struct type* FUNC5 (struct value*) ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 struct value* FUNC6 (struct type*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct minimal_symbol* FUNC8 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct type*) ; 
 struct symbol* FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct value*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct value* FUNC13 (int /*<<< orphan*/ ) ; 

struct value *
FUNC14 (struct value **arg1p, struct fn_field *f, int j, struct type *type,
		int offset)
{
  struct value *v;
  struct type *ftype = FUNC4 (f, j);
  char *physname = FUNC3 (f, j);
  struct symbol *sym;
  struct minimal_symbol *msym;

  sym = FUNC10 (physname, 0, VAR_DOMAIN, 0, NULL);
  if (sym != NULL)
    {
      msym = NULL;
    }
  else
    {
      FUNC7 (sym == NULL);
      msym = FUNC8 (physname, NULL, NULL);
      if (msym == NULL)
	return NULL;
    }

  v = FUNC6 (ftype);
  if (sym)
    {
      VALUE_ADDRESS (v) = FUNC0 (FUNC1 (sym));
    }
  else
    {
      VALUE_ADDRESS (v) = FUNC2 (msym);
    }

  if (arg1p)
    {
      if (type != FUNC5 (*arg1p))
	*arg1p = FUNC13 (FUNC12 (FUNC9 (type),
					FUNC11 (*arg1p)));

      /* Move the `this' pointer according to the offset.
         VALUE_OFFSET (*arg1p) += offset;
       */
    }

  return v;
}