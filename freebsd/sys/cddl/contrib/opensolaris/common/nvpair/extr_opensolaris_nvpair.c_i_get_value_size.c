
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int uchar_t ;
typedef int nvlist_t ;
typedef int int8_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;
typedef int hrtime_t ;
typedef int data_type_t ;
typedef int boolean_t ;
 int INT32_MAX ;
 int NV_ALIGN (int) ;
 scalar_t__ i_validate_type_nelem (int,size_t) ;
 int strlen (char* const) ;

__attribute__((used)) static int
i_get_value_size(data_type_t type, const void *data, uint_t nelem)
{
 uint64_t value_sz;

 if (i_validate_type_nelem(type, nelem) != 0)
  return (-1);


 switch (type) {
 case 154:
  value_sz = 0;
  break;
 case 152:
  value_sz = sizeof (boolean_t);
  break;
 case 151:
  value_sz = sizeof (uchar_t);
  break;
 case 141:
  value_sz = sizeof (int8_t);
  break;
 case 129:
  value_sz = sizeof (uint8_t);
  break;
 case 147:
  value_sz = sizeof (int16_t);
  break;
 case 135:
  value_sz = sizeof (uint16_t);
  break;
 case 145:
  value_sz = sizeof (int32_t);
  break;
 case 133:
  value_sz = sizeof (uint32_t);
  break;
 case 143:
  value_sz = sizeof (int64_t);
  break;
 case 131:
  value_sz = sizeof (uint64_t);
  break;

 case 149:
  value_sz = sizeof (double);
  break;

 case 137:
  if (data == ((void*)0))
   value_sz = 0;
  else
   value_sz = strlen(data) + 1;
  break;
 case 153:
  value_sz = (uint64_t)nelem * sizeof (boolean_t);
  break;
 case 150:
  value_sz = (uint64_t)nelem * sizeof (uchar_t);
  break;
 case 140:
  value_sz = (uint64_t)nelem * sizeof (int8_t);
  break;
 case 128:
  value_sz = (uint64_t)nelem * sizeof (uint8_t);
  break;
 case 146:
  value_sz = (uint64_t)nelem * sizeof (int16_t);
  break;
 case 134:
  value_sz = (uint64_t)nelem * sizeof (uint16_t);
  break;
 case 144:
  value_sz = (uint64_t)nelem * sizeof (int32_t);
  break;
 case 132:
  value_sz = (uint64_t)nelem * sizeof (uint32_t);
  break;
 case 142:
  value_sz = (uint64_t)nelem * sizeof (int64_t);
  break;
 case 130:
  value_sz = (uint64_t)nelem * sizeof (uint64_t);
  break;
 case 136:
  value_sz = (uint64_t)nelem * sizeof (uint64_t);

  if (data != ((void*)0)) {
   char *const *strs = data;
   uint_t i;


   for (i = 0; i < nelem; i++) {
    if (strs[i] == ((void*)0))
     return (-1);
    value_sz += strlen(strs[i]) + 1;
   }
  }
  break;
 case 148:
  value_sz = sizeof (hrtime_t);
  break;
 case 139:
  value_sz = NV_ALIGN(sizeof (nvlist_t));
  break;
 case 138:
  value_sz = (uint64_t)nelem * sizeof (uint64_t) +
      (uint64_t)nelem * NV_ALIGN(sizeof (nvlist_t));
  break;
 default:
  return (-1);
 }

 return (value_sz > INT32_MAX ? -1 : (int)value_sz);
}
