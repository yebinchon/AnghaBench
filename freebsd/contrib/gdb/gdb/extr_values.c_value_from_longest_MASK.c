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
typedef  int /*<<< orphan*/  LONGEST ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (struct type*) ; 
#define  TYPE_CODE_BOOL 135 
#define  TYPE_CODE_CHAR 134 
#define  TYPE_CODE_ENUM 133 
#define  TYPE_CODE_INT 132 
#define  TYPE_CODE_PTR 131 
#define  TYPE_CODE_RANGE 130 
#define  TYPE_CODE_REF 129 
#define  TYPE_CODE_TYPEDEF 128 
 int FUNC1 (struct type*) ; 
 int /*<<< orphan*/  FUNC2 (struct value*) ; 
 struct value* FUNC3 (struct type*) ; 
 struct type* FUNC4 (struct type*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct type*,int /*<<< orphan*/ ) ; 

struct value *
FUNC8 (struct type *type, LONGEST num)
{
  struct value *val = FUNC3 (type);
  enum type_code code;
  int len;
retry:
  code = FUNC0 (type);
  len = FUNC1 (type);

  switch (code)
    {
    case TYPE_CODE_TYPEDEF:
      type = FUNC4 (type);
      goto retry;
    case TYPE_CODE_INT:
    case TYPE_CODE_CHAR:
    case TYPE_CODE_ENUM:
    case TYPE_CODE_BOOL:
    case TYPE_CODE_RANGE:
      FUNC6 (FUNC2 (val), len, num);
      break;

    case TYPE_CODE_REF:
    case TYPE_CODE_PTR:
      FUNC7 (FUNC2 (val), type, (CORE_ADDR) num);
      break;

    default:
      FUNC5 ("Unexpected type (%d) encountered for integer constant.", code);
    }
  return val;
}