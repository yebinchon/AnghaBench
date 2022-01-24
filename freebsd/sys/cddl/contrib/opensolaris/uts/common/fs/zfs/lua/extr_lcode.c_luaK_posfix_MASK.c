#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  info; } ;
struct TYPE_15__ {TYPE_1__ u; int /*<<< orphan*/  k; int /*<<< orphan*/  t; int /*<<< orphan*/  f; } ;
typedef  TYPE_2__ expdesc ;
typedef  int /*<<< orphan*/  FuncState ;
typedef  int BinOpr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_JUMP ; 
#define  OPR_ADD 142 
#define  OPR_AND 141 
#define  OPR_CONCAT 140 
#define  OPR_DIV 139 
#define  OPR_EQ 138 
#define  OPR_GE 137 
#define  OPR_GT 136 
#define  OPR_LE 135 
#define  OPR_LT 134 
#define  OPR_MOD 133 
#define  OPR_MUL 132 
#define  OPR_NE 131 
#define  OPR_OR 130 
#define  OPR_POW 129 
#define  OPR_SUB 128 
 scalar_t__ OP_ADD ; 
 int /*<<< orphan*/  OP_CONCAT ; 
 scalar_t__ OP_EQ ; 
 int /*<<< orphan*/  OpCode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VRELOCABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

void FUNC13 (FuncState *fs, BinOpr op,
                  expdesc *e1, expdesc *e2, int line) {
  switch (op) {
    case OPR_AND: {
      FUNC12(e1->t == NO_JUMP);  /* list must be closed */
      FUNC9(fs, e2);
      FUNC8(fs, &e2->f, e1->f);
      *e1 = *e2;
      break;
    }
    case OPR_OR: {
      FUNC12(e1->f == NO_JUMP);  /* list must be closed */
      FUNC9(fs, e2);
      FUNC8(fs, &e2->t, e1->t);
      *e1 = *e2;
      break;
    }
    case OPR_CONCAT: {
      FUNC11(fs, e2);
      if (e2->k == VRELOCABLE && FUNC1(FUNC7(fs, e2)) == OP_CONCAT) {
        FUNC12(e1->u.info == FUNC0(FUNC7(fs, e2))-1);
        FUNC6(fs, e1);
        FUNC2(FUNC7(fs, e2), e1->u.info);
        e1->k = VRELOCABLE; e1->u.info = e2->u.info;
      }
      else {
        FUNC10(fs, e2);  /* operand must be on the 'stack' */
        FUNC4(fs, OP_CONCAT, e1, e2, line);
      }
      break;
    }
    case OPR_ADD: case OPR_SUB: case OPR_MUL: case OPR_DIV:
    case OPR_MOD: case OPR_POW: {
      FUNC4(fs, FUNC3(OpCode, op - OPR_ADD + OP_ADD), e1, e2, line);
      break;
    }
    case OPR_EQ: case OPR_LT: case OPR_LE: {
      FUNC5(fs, FUNC3(OpCode, op - OPR_EQ + OP_EQ), 1, e1, e2);
      break;
    }
    case OPR_NE: case OPR_GT: case OPR_GE: {
      FUNC5(fs, FUNC3(OpCode, op - OPR_NE + OP_EQ), 0, e1, e2);
      break;
    }
    default: FUNC12(0);
  }
}