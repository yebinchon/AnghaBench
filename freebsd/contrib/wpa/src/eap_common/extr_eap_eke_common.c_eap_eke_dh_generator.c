
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static int eap_eke_dh_generator(u8 group)
{
 switch (group) {
 case 129:
  return 5;
 case 128:
  return 31;
 case 132:
  return 11;
 case 131:
  return 5;
 case 130:
  return 5;
 }

 return -1;
}
