
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum json_type { ____Placeholder_json_type } json_type ;
__attribute__((used)) static const char * json_type_str(enum json_type type)
{
 switch (type) {
 case 128:
  return "VALUE";
 case 130:
  return "OBJECT";
 case 134:
  return "ARRAY";
 case 129:
  return "STRING";
 case 131:
  return "NUMBER";
 case 133:
  return "BOOLEAN";
 case 132:
  return "NULL";
 }
 return "??";
}
