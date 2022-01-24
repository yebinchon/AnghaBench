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
typedef  int /*<<< orphan*/  OpCode ;
typedef  int /*<<< orphan*/  FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int MAXARG_A ; 
 int MAXARG_B ; 
 int MAXARG_C ; 
 scalar_t__ OpArgN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ iABC ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6 (FuncState *fs, OpCode o, int a, int b, int c) {
  FUNC5(FUNC3(o) == iABC);
  FUNC5(FUNC1(o) != OpArgN || b == 0);
  FUNC5(FUNC2(o) != OpArgN || c == 0);
  FUNC5(a <= MAXARG_A && b <= MAXARG_B && c <= MAXARG_C);
  return FUNC4(fs, FUNC0(o, a, b, c));
}