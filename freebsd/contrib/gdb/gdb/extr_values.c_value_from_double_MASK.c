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
typedef  enum type_code { ____Placeholder_type_code } type_code ;
typedef  int /*<<< orphan*/  DOUBLEST ;

/* Variables and functions */
 int FUNC0 (struct type*) ; 
 int TYPE_CODE_FLT ; 
 int FUNC1 (struct type*) ; 
 int /*<<< orphan*/  FUNC2 (struct value*) ; 
 struct value* FUNC3 (struct type*) ; 
 struct type* FUNC4 (struct type*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct type*,int /*<<< orphan*/ ) ; 

struct value *
FUNC7 (struct type *type, DOUBLEST num)
{
  struct value *val = FUNC3 (type);
  struct type *base_type = FUNC4 (type);
  enum type_code code = FUNC0 (base_type);
  int len = FUNC1 (base_type);

  if (code == TYPE_CODE_FLT)
    {
      FUNC6 (FUNC2 (val), base_type, num);
    }
  else
    FUNC5 ("Unexpected type encountered for floating constant.");

  return val;
}