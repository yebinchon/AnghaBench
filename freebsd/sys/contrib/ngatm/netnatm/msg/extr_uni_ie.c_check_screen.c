
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum uni_addr_screen { ____Placeholder_uni_addr_screen } uni_addr_screen ;
typedef enum uni_addr_pres { ____Placeholder_uni_addr_pres } uni_addr_pres ;
__attribute__((used)) static int
check_screen(enum uni_addr_screen screen, enum uni_addr_pres pres)
{
 switch(pres) {
   default:
  return -1;

   case 133:
   case 132:
   case 134:
  break;
 }
 switch(screen) {
   default:
  return -1;

   case 129:
   case 128:
   case 131:
   case 130:
  break;
 }

 return 0;
}
