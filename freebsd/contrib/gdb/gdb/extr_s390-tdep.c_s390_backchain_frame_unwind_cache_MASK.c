#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct s390_unwind_cache {int /*<<< orphan*/  func; int /*<<< orphan*/  local_base; scalar_t__ frame_base; TYPE_1__* saved_regs; } ;
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
typedef  int /*<<< orphan*/  ULONGEST ;
struct TYPE_2__ {scalar_t__ addr; } ;
typedef  scalar_t__ LONGEST ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 size_t S390_PC_REGNUM ; 
 size_t S390_RETADDR_REGNUM ; 
 size_t S390_SP_REGNUM ; 
 int /*<<< orphan*/  FUNC0 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct frame_info*,size_t) ; 
 int FUNC2 (struct gdbarch*) ; 
 struct gdbarch* FUNC3 (struct frame_info*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (scalar_t__,int,scalar_t__*) ; 

__attribute__((used)) static void
FUNC6 (struct frame_info *next_frame,
				   struct s390_unwind_cache *info)
{
  struct gdbarch *gdbarch = FUNC3 (next_frame);
  int word_size = FUNC2 (gdbarch) / 8;
  CORE_ADDR backchain;
  ULONGEST reg;
  LONGEST sp;

  /* Get the backchain.  */
  reg = FUNC1 (next_frame, S390_SP_REGNUM);
  backchain = FUNC4 (reg, word_size);

  /* A zero backchain terminates the frame chain.  As additional
     sanity check, let's verify that the spill slot for SP in the
     save area pointed to by the backchain in fact links back to
     the save area.  */
  if (backchain != 0
      && FUNC5 (backchain + 15*word_size, word_size, &sp)
      && (CORE_ADDR)sp == backchain)
    {
      /* We don't know which registers were saved, but it will have
         to be at least %r14 and %r15.  This will allow us to continue
         unwinding, but other prev-frame registers may be incorrect ...  */
      info->saved_regs[S390_SP_REGNUM].addr = backchain + 15*word_size;
      info->saved_regs[S390_RETADDR_REGNUM].addr = backchain + 14*word_size;

      /* Function return will set PC to %r14.  */
      info->saved_regs[S390_PC_REGNUM] = info->saved_regs[S390_RETADDR_REGNUM];

      /* We use the current value of the frame register as local_base,
         and the top of the register save area as frame_base.  */
      info->frame_base = backchain + 16*word_size + 32;
      info->local_base = reg;
    }

  info->func = FUNC0 (next_frame);
}