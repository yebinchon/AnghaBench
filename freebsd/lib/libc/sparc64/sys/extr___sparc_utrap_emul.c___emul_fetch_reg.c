
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct utrapframe {scalar_t__* uf_out; scalar_t__* uf_global; } ;
struct frame {scalar_t__* fr_local; } ;


 int IREG_G0 ;
 int IREG_L0 ;
 int IREG_O0 ;
 scalar_t__ SPOFF ;

u_long
__emul_fetch_reg(struct utrapframe *uf, int reg)
{
 struct frame *frm;

 if (reg == IREG_G0)
  return (0);
 else if (reg < IREG_O0)
  return (uf->uf_global[reg]);
 else if (reg < IREG_L0)
  return (uf->uf_out[reg - IREG_O0]);
 else {




  frm = (struct frame *)(uf->uf_out[6] + SPOFF);
  return (frm->fr_local[reg - IREG_L0]);
 }
}
