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
typedef  int /*<<< orphan*/  FuncState ;

/* Variables and functions */
 int MAXARG_Bx ; 
 int /*<<< orphan*/  OP_LOADK ; 
 int /*<<< orphan*/  OP_LOADKX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 

int FUNC2 (FuncState *fs, int reg, int k) {
  if (k <= MAXARG_Bx)
    return FUNC1(fs, OP_LOADK, reg, k);
  else {
    int p = FUNC1(fs, OP_LOADKX, reg, 0);
    FUNC0(fs, k);
    return p;
  }
}