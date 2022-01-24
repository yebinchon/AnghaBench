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
struct sparc_frame_cache {scalar_t__ frameless_p; } ;
struct gdbarch_tdep {scalar_t__ plt_entry_size; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 (unsigned long) ; 
 int FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 struct gdbarch_tdep* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 unsigned long FUNC7 (scalar_t__) ; 

CORE_ADDR
FUNC8 (CORE_ADDR pc, CORE_ADDR current_pc,
			struct sparc_frame_cache *cache)
{
  struct gdbarch_tdep *tdep = FUNC5 (current_gdbarch);
  unsigned long insn;
  int offset = 0;
  int dest = -1;

  if (current_pc <= pc)
    return current_pc;

  /* We have to handle to "Procedure Linkage Table" (PLT) special.  On
     SPARC the linker usually defines a symbol (typically
     _PROCEDURE_LINKAGE_TABLE_) at the start of the .plt section.
     This symbol makes us end up here with PC pointing at the start of
     the PLT and CURRENT_PC probably pointing at a PLT entry.  If we
     would do our normal prologue analysis, we would probably conclude
     that we've got a frame when in reality we don't, since the
     dynamic linker patches up the first PLT with some code that
     starts with a SAVE instruction.  Patch up PC such that it points
     at the start of our PLT entry.  */
  if (tdep->plt_entry_size > 0 && FUNC6 (current_pc, NULL))
    pc = current_pc - ((current_pc - pc) % tdep->plt_entry_size);

  insn = FUNC7 (pc);

  /* Recognize a SETHI insn and record its destination.  */
  if (FUNC1 (insn) == 0 && FUNC2 (insn) == 0x04)
    {
      dest = FUNC4 (insn);
      offset += 4;

      insn = FUNC7 (pc + 4);
    }

  /* Allow for an arithmetic operation on DEST or %g1.  */
  if (FUNC1 (insn) == 2 && FUNC0 (insn)
      && (FUNC4 (insn) == 1 || FUNC4 (insn) == dest))
    {
      offset += 4;

      insn = FUNC7 (pc + 8);
    }

  /* Check for the SAVE instruction that sets up the frame.  */
  if (FUNC1 (insn) == 2 && FUNC3 (insn) == 0x3c)
    {
      cache->frameless_p = 0;
      return pc + offset + 4;
    }

  return pc;
}