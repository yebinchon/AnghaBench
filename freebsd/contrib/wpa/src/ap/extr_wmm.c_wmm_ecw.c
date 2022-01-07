
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int WMM_AC_ECWMAX_MASK ;
 int WMM_AC_ECWMAX_SHIFT ;
 int WMM_AC_ECWMIN_MASK ;
 int WMM_AC_ECWMIN_SHIFT ;

__attribute__((used)) static inline u8 wmm_ecw(int ecwmin, int ecwmax)
{
 return ((ecwmin << WMM_AC_ECWMIN_SHIFT) & WMM_AC_ECWMIN_MASK) |
  ((ecwmax << WMM_AC_ECWMAX_SHIFT) & WMM_AC_ECWMAX_MASK);
}
