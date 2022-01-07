
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparc_gregset {int r_psr_offset; int r_pc_offset; int r_npc_offset; int r_y_offset; int r_g1_offset; int r_l0_offset; } ;
struct regcache {int dummy; } ;


 int SPARC32_NPC_REGNUM ;
 int SPARC32_PC_REGNUM ;
 int SPARC32_PSR_REGNUM ;
 int SPARC32_Y_REGNUM ;
 int SPARC_G1_REGNUM ;
 int SPARC_I7_REGNUM ;
 int SPARC_L0_REGNUM ;
 int SPARC_O7_REGNUM ;
 int regcache_raw_collect (struct regcache const*,int,char*) ;

void
sparc32_collect_gregset (const struct sparc_gregset *gregset,
    const struct regcache *regcache,
    int regnum, void *gregs)
{
  char *regs = gregs;
  int i;

  if (regnum == SPARC32_PSR_REGNUM || regnum == -1)
    regcache_raw_collect (regcache, SPARC32_PSR_REGNUM,
     regs + gregset->r_psr_offset);

  if (regnum == SPARC32_PC_REGNUM || regnum == -1)
    regcache_raw_collect (regcache, SPARC32_PC_REGNUM,
     regs + gregset->r_pc_offset);

  if (regnum == SPARC32_NPC_REGNUM || regnum == -1)
    regcache_raw_collect (regcache, SPARC32_NPC_REGNUM,
     regs + gregset->r_npc_offset);

  if (regnum == SPARC32_Y_REGNUM || regnum == -1)
    regcache_raw_collect (regcache, SPARC32_Y_REGNUM,
     regs + gregset->r_y_offset);

  if ((regnum >= SPARC_G1_REGNUM && regnum <= SPARC_O7_REGNUM) || regnum == -1)
    {
      int offset = gregset->r_g1_offset;


      for (i = SPARC_G1_REGNUM; i <= SPARC_O7_REGNUM; i++)
 {
   if (regnum == i || regnum == -1)
     regcache_raw_collect (regcache, i, regs + offset);
   offset += 4;
 }
    }

  if ((regnum >= SPARC_L0_REGNUM && regnum <= SPARC_I7_REGNUM) || regnum == -1)
    {


      if (gregset->r_l0_offset != -1)
 {
   int offset = gregset->r_l0_offset;

   for (i = SPARC_L0_REGNUM; i <= SPARC_I7_REGNUM; i++)
     {
       if (regnum == i || regnum == -1)
  regcache_raw_collect (regcache, i, regs + offset);
       offset += 4;
     }
 }
    }
}
