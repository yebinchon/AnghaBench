
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;






__attribute__((used)) static bool
ivrs_is_ivhd(UINT8 type)
{

 switch(type) {
 case 129:
 case 130:
 case 128:
  return (1);

 default:
  return (0);
 }
}
