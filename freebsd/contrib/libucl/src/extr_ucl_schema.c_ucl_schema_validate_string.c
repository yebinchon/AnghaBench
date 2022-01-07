
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ type; scalar_t__ len; } ;
typedef TYPE_1__ ucl_object_t ;
typedef int * ucl_object_iter_t ;
struct ucl_schema_error {int dummy; } ;
typedef int regex_t ;
typedef scalar_t__ int64_t ;


 int REG_EXTENDED ;
 int REG_NOSUB ;
 scalar_t__ UCL_INT ;
 int UCL_SCHEMA_CONSTRAINT ;
 int UCL_SCHEMA_INVALID_SCHEMA ;
 scalar_t__ UCL_STRING ;
 scalar_t__ regcomp (int *,int ,int) ;
 scalar_t__ regexec (int *,int ,int ,int *,int ) ;
 int regfree (int *) ;
 scalar_t__ strcmp (int ,char*) ;
 TYPE_1__* ucl_object_iterate (TYPE_1__ const*,int **,int) ;
 int ucl_object_key (TYPE_1__ const*) ;
 scalar_t__ ucl_object_toint (TYPE_1__ const*) ;
 int ucl_object_tostring (TYPE_1__ const*) ;
 int ucl_schema_create_error (struct ucl_schema_error*,int ,TYPE_1__ const*,char*,scalar_t__,...) ;

__attribute__((used)) static bool
ucl_schema_validate_string (const ucl_object_t *schema,
  const ucl_object_t *obj, struct ucl_schema_error *err)
{
 const ucl_object_t *elt;
 ucl_object_iter_t iter = ((void*)0);
 bool ret = 1;
 int64_t constraint;




 while (ret && (elt = ucl_object_iterate (schema, &iter, 1)) != ((void*)0)) {
  if (elt->type == UCL_INT &&
   strcmp (ucl_object_key (elt), "maxLength") == 0) {
   constraint = ucl_object_toint (elt);
   if (obj->len > constraint) {
    ucl_schema_create_error (err, UCL_SCHEMA_CONSTRAINT, obj,
      "string is too big: %.3f, maximum is: %.3f",
      obj->len, constraint);
    ret = 0;
    break;
   }
  }
  else if (elt->type == UCL_INT &&
    strcmp (ucl_object_key (elt), "minLength") == 0) {
   constraint = ucl_object_toint (elt);
   if (obj->len < constraint) {
    ucl_schema_create_error (err, UCL_SCHEMA_CONSTRAINT, obj,
      "string is too short: %.3f, minimum is: %.3f",
      obj->len, constraint);
    ret = 0;
    break;
   }
  }
 }

 return ret;
}
