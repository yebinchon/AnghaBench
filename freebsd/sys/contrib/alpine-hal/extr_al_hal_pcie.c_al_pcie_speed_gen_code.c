
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum al_pcie_link_speed { ____Placeholder_al_pcie_link_speed } al_pcie_link_speed ;


 int AL_PCIE_LINK_SPEED_GEN1 ;
 int AL_PCIE_LINK_SPEED_GEN2 ;
 int AL_PCIE_LINK_SPEED_GEN3 ;

__attribute__((used)) static unsigned int
al_pcie_speed_gen_code(enum al_pcie_link_speed speed)
{
 if (speed == AL_PCIE_LINK_SPEED_GEN1)
  return 1;
 if (speed == AL_PCIE_LINK_SPEED_GEN2)
  return 2;
 if (speed == AL_PCIE_LINK_SPEED_GEN3)
  return 3;

 return 0;
}
