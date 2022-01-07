
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ type; struct TYPE_9__* next; } ;
typedef TYPE_1__ ucl_object_t ;
struct ucl_schema_error {int dummy; } ;


 scalar_t__ UCL_ARRAY ;
 scalar_t__ UCL_OBJECT ;
 int UCL_SCHEMA_INVALID_SCHEMA ;
 int strtoul (char const*,char**,int) ;
 TYPE_1__* ucl_array_head (TYPE_1__ const*) ;
 TYPE_1__* ucl_object_lookup_len (TYPE_1__ const*,char const*,int) ;
 int ucl_schema_create_error (struct ucl_schema_error*,int ,TYPE_1__ const*,char*,char const*,...) ;

__attribute__((used)) static const ucl_object_t *
ucl_schema_resolve_ref_component (const ucl_object_t *cur,
  const char *refc, int len,
  struct ucl_schema_error *err)
{
 const ucl_object_t *res = ((void*)0);
 char *err_str;
 int num, i;

 if (cur->type == UCL_OBJECT) {

  res = ucl_object_lookup_len (cur, refc, len);
  if (res == ((void*)0)) {
   ucl_schema_create_error (err, UCL_SCHEMA_INVALID_SCHEMA, cur,
     "reference %s is invalid, missing path component", refc);
   return ((void*)0);
  }
 }
 else if (cur->type == UCL_ARRAY) {

  num = strtoul (refc, &err_str, 10);
  if (err_str != ((void*)0) && *err_str != '/' && *err_str != '\0') {
   ucl_schema_create_error (err, UCL_SCHEMA_INVALID_SCHEMA, cur,
     "reference %s is invalid, invalid item number", refc);
   return ((void*)0);
  }
  res = ucl_array_head (cur);
  i = 0;
  while (res != ((void*)0)) {
   if (i == num) {
    break;
   }
   res = res->next;
  }
  if (res == ((void*)0)) {
   ucl_schema_create_error (err, UCL_SCHEMA_INVALID_SCHEMA, cur,
     "reference %s is invalid, item number %d does not exist",
     refc, num);
   return ((void*)0);
  }
 }
 else {
  ucl_schema_create_error (err, UCL_SCHEMA_INVALID_SCHEMA, res,
    "reference %s is invalid, contains primitive object in the path",
    refc);
  return ((void*)0);
 }

 return res;
}
