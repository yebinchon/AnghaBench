
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
struct ucl_schema_error {char* msg; } ;


 int UCL_EMIT_CONFIG ;
 int fprintf (int ,char*,...) ;
 int stdout ;
 char* ucl_object_emit (int const*,int ) ;
 int * ucl_object_lookup (int const*,char*) ;
 int ucl_object_toboolean (int const*) ;
 char* ucl_object_tostring (int const*) ;
 int ucl_object_validate (int const*,int const*,struct ucl_schema_error*) ;

__attribute__((used)) static bool
perform_test (const ucl_object_t *schema, const ucl_object_t *obj,
  struct ucl_schema_error *err)
{
 const ucl_object_t *valid, *data, *description;
 bool match;

 data = ucl_object_lookup (obj, "data");
 description = ucl_object_lookup (obj, "description");
 valid = ucl_object_lookup (obj, "valid");

 if (data == ((void*)0) || description == ((void*)0) || valid == ((void*)0)) {
  fprintf (stdout, "Bad test case\n");
  return 0;
 }

 match = ucl_object_validate (schema, data, err);
 if (match != ucl_object_toboolean (valid)) {
  fprintf (stdout, "Test case '%s' failed (expected %s): '%s'\n",
    ucl_object_tostring (description),
    ucl_object_toboolean (valid) ? "valid" : "invalid",
      err->msg);
  fprintf (stdout, "%s\n", ucl_object_emit (data, UCL_EMIT_CONFIG));
  fprintf (stdout, "%s\n", ucl_object_emit (schema, UCL_EMIT_CONFIG));
  return 0;
 }

 return 1;
}
