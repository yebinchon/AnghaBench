#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int length; char* ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_EXPRSTRING ; 
 int /*<<< orphan*/  USE_EXPRSTRING ; 
 char* lexptr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ str ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 

int
FUNC3 (void)
{
  char *start;
  while (*lexptr == ' ')
    lexptr++;
  start = lexptr;
  FUNC0 (USE_EXPRSTRING);
#if USE_EXPRSTRING
  str.length = lexptr - start;
  str.ptr = start;
  write_exp_elt_opcode (OP_EXPRSTRING);
  write_exp_string (str);
  write_exp_elt_opcode (OP_EXPRSTRING);
#endif
  return 0;
}