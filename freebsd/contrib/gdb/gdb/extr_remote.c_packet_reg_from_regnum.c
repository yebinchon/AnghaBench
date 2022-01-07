
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_state {struct packet_reg* regs; } ;
struct packet_reg {long regnum; } ;


 long NUM_PSEUDO_REGS ;
 long NUM_REGS ;
 int gdb_assert (int) ;

__attribute__((used)) static struct packet_reg *
packet_reg_from_regnum (struct remote_state *rs, long regnum)
{
  if (regnum < 0 && regnum >= NUM_REGS + NUM_PSEUDO_REGS)
    return ((void*)0);
  else
    {
      struct packet_reg *r = &rs->regs[regnum];
      gdb_assert (r->regnum == regnum);
      return r;
    }
}
