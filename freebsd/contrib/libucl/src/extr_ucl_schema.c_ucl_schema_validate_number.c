
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ type; } ;
typedef TYPE_1__ ucl_object_t ;
typedef int * ucl_object_iter_t ;
struct ucl_schema_error {int dummy; } ;


 scalar_t__ UCL_BOOLEAN ;
 scalar_t__ UCL_FLOAT ;
 scalar_t__ UCL_INT ;
 int UCL_SCHEMA_CONSTRAINT ;
 int UCL_SCHEMA_INVALID_SCHEMA ;
 double const fabs (int ) ;
 int remainder (double,double) ;
 scalar_t__ strcmp (int ,char*) ;
 TYPE_1__* ucl_object_iterate (TYPE_1__ const*,int **,int) ;
 int ucl_object_key (TYPE_1__ const*) ;
 TYPE_1__* ucl_object_lookup (TYPE_1__ const*,char*) ;
 int ucl_object_toboolean (TYPE_1__ const*) ;
 double ucl_object_todouble (TYPE_1__ const*) ;
 int ucl_schema_create_error (struct ucl_schema_error*,int ,TYPE_1__ const*,char*,...) ;

__attribute__((used)) static bool
ucl_schema_validate_number (const ucl_object_t *schema,
  const ucl_object_t *obj, struct ucl_schema_error *err)
{
 const ucl_object_t *elt, *test;
 ucl_object_iter_t iter = ((void*)0);
 bool ret = 1, exclusive = 0;
 double constraint, val;
 const double alpha = 1e-16;

 while (ret && (elt = ucl_object_iterate (schema, &iter, 1)) != ((void*)0)) {
  if ((elt->type == UCL_FLOAT || elt->type == UCL_INT) &&
    strcmp (ucl_object_key (elt), "multipleOf") == 0) {
   constraint = ucl_object_todouble (elt);
   if (constraint <= 0) {
    ucl_schema_create_error (err, UCL_SCHEMA_INVALID_SCHEMA, elt,
      "multipleOf must be greater than zero");
    ret = 0;
    break;
   }
   val = ucl_object_todouble (obj);
   if (fabs (remainder (val, constraint)) > alpha) {
    ucl_schema_create_error (err, UCL_SCHEMA_CONSTRAINT, obj,
      "number %.4f is not multiple of %.4f, remainder is %.7f",
      val, constraint);
    ret = 0;
    break;
   }
  }
  else if ((elt->type == UCL_FLOAT || elt->type == UCL_INT) &&
   strcmp (ucl_object_key (elt), "maximum") == 0) {
   constraint = ucl_object_todouble (elt);
   test = ucl_object_lookup (schema, "exclusiveMaximum");
   if (test && test->type == UCL_BOOLEAN) {
    exclusive = ucl_object_toboolean (test);
   }
   val = ucl_object_todouble (obj);
   if (val > constraint || (exclusive && val >= constraint)) {
    ucl_schema_create_error (err, UCL_SCHEMA_CONSTRAINT, obj,
      "number is too big: %.3f, maximum is: %.3f",
      val, constraint);
    ret = 0;
    break;
   }
  }
  else if ((elt->type == UCL_FLOAT || elt->type == UCL_INT) &&
    strcmp (ucl_object_key (elt), "minimum") == 0) {
   constraint = ucl_object_todouble (elt);
   test = ucl_object_lookup (schema, "exclusiveMinimum");
   if (test && test->type == UCL_BOOLEAN) {
    exclusive = ucl_object_toboolean (test);
   }
   val = ucl_object_todouble (obj);
   if (val < constraint || (exclusive && val <= constraint)) {
    ucl_schema_create_error (err, UCL_SCHEMA_CONSTRAINT, obj,
      "number is too small: %.3f, minimum is: %.3f",
      val, constraint);
    ret = 0;
    break;
   }
  }
 }

 return ret;
}
