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
struct gdbarch_tdep {int /*<<< orphan*/  npc_regnum; int /*<<< orphan*/  pc_regnum; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_ENTRY_POINT ; 
 int /*<<< orphan*/  SPARC64_NPC_REGNUM ; 
 int /*<<< orphan*/  SPARC64_NUM_PSEUDO_REGS ; 
 int /*<<< orphan*/  SPARC64_NUM_REGS ; 
 int /*<<< orphan*/  SPARC64_PC_REGNUM ; 
 int /*<<< orphan*/  default_stabs_argument_has_addr ; 
 int /*<<< orphan*/  FUNC0 (struct gdbarch*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 struct gdbarch_tdep* FUNC2 (struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct gdbarch*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sparc64_frame_base ; 
 int /*<<< orphan*/  sparc64_frame_sniffer ; 
 int /*<<< orphan*/  sparc64_pseudo_register_read ; 
 int /*<<< orphan*/  sparc64_pseudo_register_write ; 
 int /*<<< orphan*/  sparc64_push_dummy_call ; 
 int /*<<< orphan*/  sparc64_register_name ; 
 int /*<<< orphan*/  sparc64_register_type ; 
 int /*<<< orphan*/  sparc64_return_value ; 
 int /*<<< orphan*/  sparc64_skip_prologue ; 

void
FUNC19 (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = FUNC2 (gdbarch);

  tdep->pc_regnum = SPARC64_PC_REGNUM;
  tdep->npc_regnum = SPARC64_NPC_REGNUM;

  /* This is what all the fuss is about.  */
  FUNC4 (gdbarch, 64);
  FUNC5 (gdbarch, 64);
  FUNC11 (gdbarch, 64);

  FUNC7 (gdbarch, SPARC64_NUM_REGS);
  FUNC14 (gdbarch, sparc64_register_name);
  FUNC15 (gdbarch, sparc64_register_type);
  FUNC6 (gdbarch, SPARC64_NUM_PSEUDO_REGS);
  FUNC9 (gdbarch, sparc64_pseudo_register_read);
  FUNC10 (gdbarch, sparc64_pseudo_register_write);

  /* Register numbers of various important registers.  */
  FUNC8 (gdbarch, SPARC64_PC_REGNUM); /* %pc */

  /* Call dummy code.  */
  FUNC3 (gdbarch, AT_ENTRY_POINT);
  FUNC13 (gdbarch, NULL);
  FUNC12 (gdbarch, sparc64_push_dummy_call);

  FUNC16 (gdbarch, sparc64_return_value);
  FUNC18
    (gdbarch, default_stabs_argument_has_addr);

  FUNC17 (gdbarch, sparc64_skip_prologue);

  FUNC1 (gdbarch, sparc64_frame_sniffer);
  FUNC0 (gdbarch, &sparc64_frame_base);
}