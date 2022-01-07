
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static int eap_eke_dh_len(u8 group)
{
 switch (group) {
 case 129:
  return 128;
 case 128:
  return 192;
 case 132:
  return 256;
 case 131:
  return 384;
 case 130:
  return 512;
 }

 return -1;
}
