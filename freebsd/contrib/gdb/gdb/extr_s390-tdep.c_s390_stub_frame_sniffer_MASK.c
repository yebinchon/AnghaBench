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
struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int S390_MAX_INSTR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct frame_info*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct frame_unwind const s390_stub_frame_unwind ; 

__attribute__((used)) static const struct frame_unwind *
FUNC3 (struct frame_info *next_frame)
{
  CORE_ADDR pc = FUNC0 (next_frame);
  bfd_byte insn[S390_MAX_INSTR_SIZE];

  /* If the current PC points to non-readable memory, we assume we
     have trapped due to an invalid function pointer call.  We handle
     the non-existing current function like a PLT stub.  */
  if (FUNC1 (pc, NULL)
      || FUNC2 (insn, pc) < 0)
    return &s390_stub_frame_unwind;
  return NULL;
}