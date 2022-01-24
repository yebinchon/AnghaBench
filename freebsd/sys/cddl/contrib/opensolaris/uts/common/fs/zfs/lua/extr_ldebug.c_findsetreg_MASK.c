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
struct TYPE_3__ {int /*<<< orphan*/ * code; } ;
typedef  TYPE_1__ Proto ;
typedef  int OpCode ;
typedef  int /*<<< orphan*/  Instruction ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
#define  OP_CALL 133 
#define  OP_JMP 132 
#define  OP_LOADNIL 131 
#define  OP_TAILCALL 130 
#define  OP_TEST 129 
#define  OP_TFORCALL 128 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6 (Proto *p, int lastpc, int reg) {
  int pc;
  int setreg = -1;  /* keep last instruction that changed 'reg' */
  int jmptarget = 0;  /* any code before this address is conditional */
  for (pc = 0; pc < lastpc; pc++) {
    Instruction i = p->code[pc];
    OpCode op = FUNC3(i);
    int a = FUNC0(i);
    switch (op) {
      case OP_LOADNIL: {
        int b = FUNC1(i);
        if (a <= reg && reg <= a + b)  /* set registers from 'a' to 'a+b' */
          setreg = FUNC4(pc, jmptarget);
        break;
      }
      case OP_TFORCALL: {
        if (reg >= a + 2)  /* affect all regs above its base */
          setreg = FUNC4(pc, jmptarget);
        break;
      }
      case OP_CALL:
      case OP_TAILCALL: {
        if (reg >= a)  /* affect all registers above base */
          setreg = FUNC4(pc, jmptarget);
        break;
      }
      case OP_JMP: {
        int b = FUNC2(i);
        int dest = pc + 1 + b;
        /* jump is forward and do not skip `lastpc'? */
        if (pc < dest && dest <= lastpc) {
          if (dest > jmptarget)
            jmptarget = dest;  /* update 'jmptarget' */
        }
        break;
      }
      case OP_TEST: {
        if (reg == a)  /* jumped code can change 'a' */
          setreg = FUNC4(pc, jmptarget);
        break;
      }
      default:
        if (FUNC5(op) && reg == a)  /* any instruction that set A */
          setreg = FUNC4(pc, jmptarget);
        break;
    }
  }
  return setreg;
}