
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;


 int ASI_DTLB_DATA_ACCESS_REG ;
 int PSTATE_IE ;
 int TLB_DAR_SLOT (int ,int ) ;
 int ldxa (int ,int ) ;
 int rdpr (int) ;
 int wrpr (int,int,int ) ;

__attribute__((used)) static inline u_long
dtlb_get_data_sun4u(u_int tlb, u_int slot)
{
 u_long data, pstate;

 slot = TLB_DAR_SLOT(tlb, slot);




 pstate = rdpr(pstate);
 wrpr(pstate, pstate & ~PSTATE_IE, 0);
 (void)ldxa(slot, ASI_DTLB_DATA_ACCESS_REG);
 data = ldxa(slot, ASI_DTLB_DATA_ACCESS_REG);
 wrpr(pstate, pstate, 0);
 return (data);
}
