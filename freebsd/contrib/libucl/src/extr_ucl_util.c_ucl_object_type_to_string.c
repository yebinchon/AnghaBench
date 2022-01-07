
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_type_t ;
const char *
ucl_object_type_to_string (ucl_type_t type)
{
 const char *res = "unknown";

 switch (type) {
 case 131:
  res = "object";
  break;
 case 136:
  res = "array";
  break;
 case 133:
  res = "integer";
  break;
 case 134:
 case 129:
  res = "number";
  break;
 case 130:
  res = "string";
  break;
 case 135:
  res = "boolean";
  break;
 case 128:
  res = "userdata";
  break;
 case 132:
  res = "null";
  break;
 }

 return res;
}
