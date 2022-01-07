
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NPT_IPIMASK ;
 int PMAP_PDE_SUPERPAGE ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int npt_flags ;

int
svm_npt_init(int ipinum)
{
 int enable_superpage = 1;

 npt_flags = ipinum & NPT_IPIMASK;
 TUNABLE_INT_FETCH("hw.vmm.npt.enable_superpage", &enable_superpage);
 if (enable_superpage)
  npt_flags |= PMAP_PDE_SUPERPAGE;

 return (0);
}
