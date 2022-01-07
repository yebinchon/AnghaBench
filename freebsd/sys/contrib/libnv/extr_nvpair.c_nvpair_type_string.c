
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
nvpair_type_string(int type)
{

 switch (type) {
 case 134:
  return ("NULL");
 case 138:
  return ("BOOL");
 case 133:
  return ("NUMBER");
 case 129:
  return ("STRING");
 case 131:
  return ("NVLIST");
 case 136:
  return ("DESCRIPTOR");
 case 139:
  return ("BINARY");
 case 137:
  return ("BOOL ARRAY");
 case 132:
  return ("NUMBER ARRAY");
 case 128:
  return ("STRING ARRAY");
 case 130:
  return ("NVLIST ARRAY");
 case 135:
  return ("DESCRIPTOR ARRAY");
 default:
  return ("<UNKNOWN>");
 }
}
