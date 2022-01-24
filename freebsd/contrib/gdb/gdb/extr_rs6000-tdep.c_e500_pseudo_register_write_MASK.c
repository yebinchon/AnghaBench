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
struct regcache {int dummy; } ;
struct gdbarch_tdep {int ppc_gp0_regnum; int ppc_gplast_regnum; int ppc_ev0_regnum; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 scalar_t__ BFD_ENDIAN_BIG ; 
 int MAX_REGISTER_SIZE ; 
 scalar_t__ TARGET_BYTE_ORDER ; 
 struct gdbarch_tdep* FUNC0 (struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct regcache*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct regcache*,int,char*) ; 

__attribute__((used)) static void
FUNC4 (struct gdbarch *gdbarch, struct regcache *regcache,
			    int reg_nr, const void *buffer)
{
  int base_regnum;
  int offset = 0;
  char temp_buffer[MAX_REGISTER_SIZE];
  struct gdbarch_tdep *tdep = FUNC0 (gdbarch); 

  if (reg_nr >= tdep->ppc_gp0_regnum 
      && reg_nr <= tdep->ppc_gplast_regnum)
    {
      base_regnum = reg_nr - tdep->ppc_gp0_regnum + tdep->ppc_ev0_regnum;
      /* reg_nr is 32 bit here, and base_regnum is 64 bits.  */
      if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
	offset = 4;

      /* Let's read the value of the base register into a temporary
	 buffer, so that overwriting the last four bytes with the new
	 value of the pseudo will leave the upper 4 bytes unchanged.  */
      FUNC2 (regcache, base_regnum, temp_buffer);

      /* Write as an 8 byte quantity.  */
      FUNC1 (temp_buffer + offset, (char *) buffer, 4);
      FUNC3 (regcache, base_regnum, temp_buffer);
    }
}