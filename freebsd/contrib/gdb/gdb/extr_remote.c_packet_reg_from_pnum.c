
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_state {struct packet_reg* regs; } ;
struct packet_reg {scalar_t__ pnum; } ;
typedef scalar_t__ LONGEST ;


 int NUM_PSEUDO_REGS ;
 int NUM_REGS ;

__attribute__((used)) static struct packet_reg *
packet_reg_from_pnum (struct remote_state *rs, LONGEST pnum)
{
  int i;
  for (i = 0; i < NUM_REGS + NUM_PSEUDO_REGS; i++)
    {
      struct packet_reg *r = &rs->regs[i];
      if (r->pnum == pnum)
 return r;
    }
  return ((void*)0);
}
