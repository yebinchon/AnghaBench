
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
__attribute__((used)) static int
has_additional(uint16_t t)
{
 switch(t) {
  case 134:
  case 133:
  case 132:
  case 129:
  case 131:
  case 135:
  case 128:
   return 1;
  case 130:

   return 0;
 }
 return 0;
}
