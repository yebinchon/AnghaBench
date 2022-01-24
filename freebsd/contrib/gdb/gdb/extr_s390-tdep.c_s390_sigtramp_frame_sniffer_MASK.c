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
typedef  int bfd_byte ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct frame_info*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 struct frame_unwind const s390_sigtramp_frame_unwind ; 

__attribute__((used)) static const struct frame_unwind *
FUNC2 (struct frame_info *next_frame)
{
  CORE_ADDR pc = FUNC0 (next_frame);
  bfd_byte sigreturn[2];

  if (FUNC1 (pc, sigreturn, 2))
    return NULL;

  if (sigreturn[0] != 0x0a /* svc */)
    return NULL;

  if (sigreturn[1] != 119 /* sigreturn */
      && sigreturn[1] != 173 /* rt_sigreturn */)
    return NULL;
  
  return &s390_sigtramp_frame_unwind;
}