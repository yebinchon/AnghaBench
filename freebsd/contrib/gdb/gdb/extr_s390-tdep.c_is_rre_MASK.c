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
typedef  int bfd_byte ;

/* Variables and functions */

__attribute__((used)) static int
FUNC0 (bfd_byte *insn, int op, unsigned int *r1, unsigned int *r2)
{
  if (((insn[0] << 8) | insn[1]) == op)
    {
      /* Yes, insn[3].  insn[2] is unused in RRE format.  */
      *r1 = (insn[3] >> 4) & 0xf;
      *r2 = insn[3] & 0xf;
      return 1;
    }
  else
    return 0;
}