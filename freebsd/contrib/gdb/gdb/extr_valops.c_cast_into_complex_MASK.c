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

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_COMPLEX ; 
 scalar_t__ TYPE_CODE_FLT ; 
 scalar_t__ TYPE_CODE_INT ; 
 scalar_t__ FUNC1 (struct type*) ; 
 struct type* FUNC2 (struct type*) ; 
 scalar_t__ FUNC3 (struct value*) ; 
 int /*<<< orphan*/  FUNC4 (struct value*) ; 
 struct type* FUNC5 (struct value*) ; 
 struct value* FUNC6 (struct type*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  not_lval ; 
 struct value* FUNC9 (struct value*,struct value*,struct type*) ; 
 struct value* FUNC10 (struct type*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct value *
FUNC11 (struct type *type, struct value *val)
{
  struct type *real_type = FUNC2 (type);
  if (FUNC0 (FUNC5 (val)) == TYPE_CODE_COMPLEX)
    {
      struct type *val_real_type = FUNC2 (FUNC5 (val));
      struct value *re_val = FUNC6 (val_real_type);
      struct value *im_val = FUNC6 (val_real_type);

      FUNC8 (FUNC4 (re_val),
	      FUNC3 (val), FUNC1 (val_real_type));
      FUNC8 (FUNC4 (im_val),
	      FUNC3 (val) + FUNC1 (val_real_type),
	      FUNC1 (val_real_type));

      return FUNC9 (re_val, im_val, type);
    }
  else if (FUNC0 (FUNC5 (val)) == TYPE_CODE_FLT
	   || FUNC0 (FUNC5 (val)) == TYPE_CODE_INT)
    return FUNC9 (val, FUNC10 (real_type, not_lval), type);
  else
    FUNC7 ("cannot cast non-number to complex");
}