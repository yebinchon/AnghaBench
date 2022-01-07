
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCTEON_CN61XX ;
 int OCTEON_CN63XX ;
 int OCTEON_CN66XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;

int cvmx_qlm_interface(int interface)
{
 if (OCTEON_IS_MODEL(OCTEON_CN61XX)) {
  return (interface == 0) ? 2 : 0;
 } else if (OCTEON_IS_MODEL(OCTEON_CN63XX) || OCTEON_IS_MODEL(OCTEON_CN66XX)) {
  return 2 - interface;
 } else {

  switch(interface) {
  case 1:
   return 0;
  default:
   return interface;
  }
 }
}
