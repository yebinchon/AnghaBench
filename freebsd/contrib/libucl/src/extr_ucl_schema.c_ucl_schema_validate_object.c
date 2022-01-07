
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_25__ {scalar_t__ type; scalar_t__ len; } ;
typedef TYPE_1__ ucl_object_t ;
typedef int * ucl_object_iter_t ;
struct ucl_schema_error {int dummy; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ UCL_ARRAY ;
 scalar_t__ UCL_BOOLEAN ;
 scalar_t__ UCL_OBJECT ;
 int UCL_SCHEMA_CONSTRAINT ;
 int UCL_SCHEMA_INVALID_SCHEMA ;
 int UCL_SCHEMA_MISSING_PROPERTY ;
 scalar_t__ strcmp (char*,char*) ;
 TYPE_1__* ucl_object_iterate (TYPE_1__ const*,int **,int) ;
 char* ucl_object_key (TYPE_1__ const*) ;
 TYPE_1__* ucl_object_lookup (TYPE_1__ const*,char*) ;
 int ucl_object_toboolean (TYPE_1__ const*) ;
 scalar_t__ ucl_object_toint_safe (TYPE_1__ const*,scalar_t__*) ;
 char* ucl_object_tostring (TYPE_1__ const*) ;
 int ucl_schema_create_error (struct ucl_schema_error*,int ,TYPE_1__ const*,char*,...) ;
 TYPE_1__* ucl_schema_test_pattern (TYPE_1__ const*,char*,int) ;
 int ucl_schema_validate (TYPE_1__ const*,TYPE_1__ const*,int,struct ucl_schema_error*,TYPE_1__ const*,TYPE_1__*) ;
 int ucl_schema_validate_dependencies (TYPE_1__ const*,TYPE_1__ const*,struct ucl_schema_error*,TYPE_1__ const*,TYPE_1__*) ;

__attribute__((used)) static bool
ucl_schema_validate_object (const ucl_object_t *schema,
  const ucl_object_t *obj, struct ucl_schema_error *err,
  const ucl_object_t *root,
  ucl_object_t *ext_ref)
{
 const ucl_object_t *elt, *prop, *found, *additional_schema = ((void*)0),
   *required = ((void*)0), *pat, *pelt;
 ucl_object_iter_t iter = ((void*)0), piter = ((void*)0);
 bool ret = 1, allow_additional = 1;
 int64_t minmax;

 while (ret && (elt = ucl_object_iterate (schema, &iter, 1)) != ((void*)0)) {
  if (elt->type == UCL_OBJECT &&
    strcmp (ucl_object_key (elt), "properties") == 0) {
   piter = ((void*)0);
   while (ret && (prop = ucl_object_iterate (elt, &piter, 1)) != ((void*)0)) {
    found = ucl_object_lookup (obj, ucl_object_key (prop));
    if (found) {
     ret = ucl_schema_validate (prop, found, 1, err, root,
       ext_ref);
    }
   }
  }
  else if (strcmp (ucl_object_key (elt), "additionalProperties") == 0) {
   if (elt->type == UCL_BOOLEAN) {
    if (!ucl_object_toboolean (elt)) {

     allow_additional = 0;
    }
   }
   else if (elt->type == UCL_OBJECT) {

    additional_schema = elt;
   }
   else {
    ucl_schema_create_error (err, UCL_SCHEMA_INVALID_SCHEMA, elt,
      "additionalProperties attribute is invalid in schema");
    ret = 0;
    break;
   }
  }
  else if (strcmp (ucl_object_key (elt), "required") == 0) {
   if (elt->type == UCL_ARRAY) {
    required = elt;
   }
   else {
    ucl_schema_create_error (err, UCL_SCHEMA_INVALID_SCHEMA, elt,
      "required attribute is invalid in schema");
    ret = 0;
    break;
   }
  }
  else if (strcmp (ucl_object_key (elt), "minProperties") == 0
    && ucl_object_toint_safe (elt, &minmax)) {
   if (obj->len < minmax) {
    ucl_schema_create_error (err, UCL_SCHEMA_CONSTRAINT, obj,
      "object has not enough properties: %u, minimum is: %u",
      obj->len, (unsigned)minmax);
    ret = 0;
    break;
   }
  }
  else if (strcmp (ucl_object_key (elt), "maxProperties") == 0
    && ucl_object_toint_safe (elt, &minmax)) {
   if (obj->len > minmax) {
    ucl_schema_create_error (err, UCL_SCHEMA_CONSTRAINT, obj,
      "object has too many properties: %u, maximum is: %u",
      obj->len, (unsigned)minmax);
    ret = 0;
    break;
   }
  }
  else if (strcmp (ucl_object_key (elt), "patternProperties") == 0) {
   const ucl_object_t *vobj;
   ucl_object_iter_t viter;
   piter = ((void*)0);
   while (ret && (prop = ucl_object_iterate (elt, &piter, 1)) != ((void*)0)) {
    viter = ((void*)0);
    while (ret && (vobj = ucl_object_iterate (obj, &viter, 1)) != ((void*)0)) {
     found = ucl_schema_test_pattern (vobj, ucl_object_key (prop), 0);
     if (found) {
      ret = ucl_schema_validate (prop, found, 1, err, root,
        ext_ref);
     }
    }
   }
  }
  else if (elt->type == UCL_OBJECT &&
    strcmp (ucl_object_key (elt), "dependencies") == 0) {
   ret = ucl_schema_validate_dependencies (elt, obj, err, root,
     ext_ref);
  }
 }

 if (ret) {

  if (!allow_additional || additional_schema != ((void*)0)) {

   iter = ((void*)0);
   prop = ucl_object_lookup (schema, "properties");
   while ((elt = ucl_object_iterate (obj, &iter, 1)) != ((void*)0)) {
    found = ucl_object_lookup (prop, ucl_object_key (elt));
    if (found == ((void*)0)) {

     piter = ((void*)0);
     pat = ucl_object_lookup (schema, "patternProperties");
     while ((pelt = ucl_object_iterate (pat, &piter, 1)) != ((void*)0)) {
      found = ucl_schema_test_pattern (obj, ucl_object_key (pelt), 1);
      if (found != ((void*)0)) {
       break;
      }
     }
    }
    if (found == ((void*)0)) {
     if (!allow_additional) {
      ucl_schema_create_error (err, UCL_SCHEMA_CONSTRAINT, obj,
        "object has non-allowed property %s",
        ucl_object_key (elt));
      ret = 0;
      break;
     }
     else if (additional_schema != ((void*)0)) {
      if (!ucl_schema_validate (additional_schema, elt,
        1, err, root, ext_ref)) {
       ret = 0;
       break;
      }
     }
    }
   }
  }

  if (required != ((void*)0)) {
   iter = ((void*)0);
   while ((elt = ucl_object_iterate (required, &iter, 1)) != ((void*)0)) {
    if (ucl_object_lookup (obj, ucl_object_tostring (elt)) == ((void*)0)) {
     ucl_schema_create_error (err, UCL_SCHEMA_MISSING_PROPERTY, obj,
       "object has missing property %s",
       ucl_object_tostring (elt));
     ret = 0;
     break;
    }
   }
  }
 }


 return ret;
}
