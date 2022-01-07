
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int data_type_t ;
 int EINVAL ;

__attribute__((used)) static int
i_validate_type_nelem(data_type_t type, uint_t nelem)
{
 switch (type) {
 case 154:
  if (nelem != 0)
   return (EINVAL);
  break;
 case 152:
 case 151:
 case 141:
 case 129:
 case 147:
 case 135:
 case 145:
 case 133:
 case 143:
 case 131:
 case 137:
 case 148:
 case 139:

 case 149:

  if (nelem != 1)
   return (EINVAL);
  break;
 case 153:
 case 150:
 case 140:
 case 128:
 case 146:
 case 134:
 case 144:
 case 132:
 case 142:
 case 130:
 case 136:
 case 138:

  break;
 default:
  return (EINVAL);
 }
 return (0);
}
