
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int WMM_AC_ACI_MASK ;
 int WMM_AC_ACI_SHIFT ;
 int WMM_AC_ACM ;
 int WMM_AC_AIFNS_SHIFT ;
 int WMM_AC_AIFSN_MASK ;

__attribute__((used)) static inline u8 wmm_aci_aifsn(int aifsn, int acm, int aci)
{
 u8 ret;
 ret = (aifsn << WMM_AC_AIFNS_SHIFT) & WMM_AC_AIFSN_MASK;
 if (acm)
  ret |= WMM_AC_ACM;
 ret |= (aci << WMM_AC_ACI_SHIFT) & WMM_AC_ACI_MASK;
 return ret;
}
