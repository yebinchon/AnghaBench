
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtdmap {int cap; } ;


 int VTD_CAP_ND (int ) ;
 int panic (char*,int) ;

__attribute__((used)) static int
vtd_max_domains(struct vtdmap *vtdmap)
{
 int nd;

 nd = VTD_CAP_ND(vtdmap->cap);

 switch (nd) {
 case 0:
  return (16);
 case 1:
  return (64);
 case 2:
  return (256);
 case 3:
  return (1024);
 case 4:
  return (4 * 1024);
 case 5:
  return (16 * 1024);
 case 6:
  return (64 * 1024);
 default:
  panic("vtd_max_domains: invalid value of nd (0x%0x)", nd);
 }
}
