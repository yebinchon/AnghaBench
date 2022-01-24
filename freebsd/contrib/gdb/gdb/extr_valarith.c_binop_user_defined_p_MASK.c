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
typedef  enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;

/* Variables and functions */
 int BINOP_ASSIGN ; 
 int BINOP_CONCAT ; 
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_REF ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 struct type* FUNC1 (struct type*) ; 
 int /*<<< orphan*/  FUNC2 (struct value*) ; 
 struct type* FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4 (enum exp_opcode op, struct value *arg1, struct value *arg2)
{
  struct type *type1, *type2;
  if (op == BINOP_ASSIGN || op == BINOP_CONCAT)
    return 0;
  type1 = FUNC3 (FUNC2 (arg1));
  type2 = FUNC3 (FUNC2 (arg2));
  return (FUNC0 (type1) == TYPE_CODE_STRUCT
	  || FUNC0 (type2) == TYPE_CODE_STRUCT
	  || (FUNC0 (type1) == TYPE_CODE_REF
	      && FUNC0 (FUNC1 (type1)) == TYPE_CODE_STRUCT)
	  || (FUNC0 (type2) == TYPE_CODE_REF
	      && FUNC0 (FUNC1 (type2)) == TYPE_CODE_STRUCT));
}