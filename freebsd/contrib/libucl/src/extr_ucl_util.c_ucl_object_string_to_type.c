
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_type_t ;


 int UCL_ARRAY ;
 int UCL_BOOLEAN ;
 int UCL_FLOAT ;
 int UCL_INT ;
 int UCL_NULL ;
 int UCL_OBJECT ;
 int UCL_STRING ;
 int UCL_USERDATA ;
 scalar_t__ strcasecmp (char const*,char*) ;

bool
ucl_object_string_to_type (const char *input, ucl_type_t *res)
{
 if (strcasecmp (input, "object") == 0) {
  *res = UCL_OBJECT;
 }
 else if (strcasecmp (input, "array") == 0) {
  *res = UCL_ARRAY;
 }
 else if (strcasecmp (input, "integer") == 0) {
  *res = UCL_INT;
 }
 else if (strcasecmp (input, "number") == 0) {
  *res = UCL_FLOAT;
 }
 else if (strcasecmp (input, "string") == 0) {
  *res = UCL_STRING;
 }
 else if (strcasecmp (input, "boolean") == 0) {
  *res = UCL_BOOLEAN;
 }
 else if (strcasecmp (input, "null") == 0) {
  *res = UCL_NULL;
 }
 else if (strcasecmp (input, "userdata") == 0) {
  *res = UCL_USERDATA;
 }
 else {
  return 0;
 }

 return 1;
}
