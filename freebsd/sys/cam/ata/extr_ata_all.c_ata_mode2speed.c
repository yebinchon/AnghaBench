
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
u_int
ata_mode2speed(int mode)
{
 switch (mode) {
 case 142:
 default:
  return (3300);
 case 141:
  return (5200);
 case 140:
  return (8300);
 case 139:
  return (11100);
 case 138:
  return (16700);
 case 130:
  return (4200);
 case 129:
  return (13300);
 case 128:
  return (16700);
 case 137:
  return (16700);
 case 136:
  return (25000);
 case 135:
  return (33300);
 case 134:
  return (44400);
 case 133:
  return (66700);
 case 132:
  return (100000);
 case 131:
  return (133000);
 }
}
