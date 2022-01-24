#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  info; } ;
struct TYPE_14__ {scalar_t__ k; TYPE_1__ u; } ;
typedef  TYPE_2__ expdesc ;
struct TYPE_15__ {int /*<<< orphan*/  pc; } ;
typedef  int /*<<< orphan*/  Instruction ;
typedef  TYPE_3__ FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_REG ; 
 scalar_t__ OP_NOT ; 
 int /*<<< orphan*/  OP_TEST ; 
 int /*<<< orphan*/  OP_TESTSET ; 
 scalar_t__ VRELOCABLE ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC6 (FuncState *fs, expdesc *e, int cond) {
  if (e->k == VRELOCABLE) {
    Instruction ie = FUNC5(fs, e);
    if (FUNC1(ie) == OP_NOT) {
      fs->pc--;  /* remove previous OP_NOT */
      return FUNC2(fs, OP_TEST, FUNC0(ie), 0, !cond);
    }
    /* else go through */
  }
  FUNC3(fs, e);
  FUNC4(fs, e);
  return FUNC2(fs, OP_TESTSET, NO_REG, e->u.info, cond);
}