#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int pc; int lasttarget; TYPE_1__* f; } ;
struct TYPE_5__ {int /*<<< orphan*/ * code; } ;
typedef  int /*<<< orphan*/  Instruction ;
typedef  TYPE_2__ FuncState ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ OP_LOADNIL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__,int,int,int /*<<< orphan*/ ) ; 

void FUNC6 (FuncState *fs, int from, int n) {
  Instruction *previous;
  int l = from + n - 1;  /* last register to set nil */
  if (fs->pc > fs->lasttarget) {  /* no jumps to current position? */
    previous = &fs->f->code[fs->pc-1];
    if (FUNC2(*previous) == OP_LOADNIL) {
      int pfrom = FUNC0(*previous);
      int pl = pfrom + FUNC1(*previous);
      if ((pfrom <= from && from <= pl + 1) ||
          (from <= pfrom && pfrom <= l + 1)) {  /* can connect both? */
        if (pfrom < from) from = pfrom;  /* from = min(from, pfrom) */
        if (pl > l) l = pl;  /* l = max(l, pl) */
        FUNC3(*previous, from);
        FUNC4(*previous, l - from);
        return;
      }
    }  /* else go through */
  }
  FUNC5(fs, OP_LOADNIL, from, n - 1, 0);  /* else no optimization */
}