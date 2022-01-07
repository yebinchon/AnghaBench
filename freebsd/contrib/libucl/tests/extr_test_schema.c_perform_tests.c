
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ type; } ;
typedef TYPE_1__ ucl_object_t ;
typedef int * ucl_object_iter_t ;
struct ucl_schema_error {int dummy; } ;
typedef int err ;


 int EXIT_FAILURE ;
 scalar_t__ UCL_OBJECT ;
 int fprintf (int ,char*,...) ;
 int memset (struct ucl_schema_error*,int ,int) ;
 int perform_test (TYPE_1__ const*,TYPE_1__ const*,struct ucl_schema_error*) ;
 int stdout ;
 TYPE_1__* ucl_object_iterate (TYPE_1__ const*,int **,int) ;
 TYPE_1__* ucl_object_lookup (TYPE_1__ const*,char*) ;
 char* ucl_object_tostring (TYPE_1__ const*) ;

__attribute__((used)) static int
perform_tests (const ucl_object_t *obj)
{
 struct ucl_schema_error err;
 ucl_object_iter_t iter = ((void*)0);
 const ucl_object_t *schema, *tests, *description, *test;

 if (obj->type != UCL_OBJECT) {
  fprintf (stdout, "Bad test case\n");
  return EXIT_FAILURE;
 }

 schema = ucl_object_lookup (obj, "schema");
 tests = ucl_object_lookup (obj, "tests");
 description = ucl_object_lookup (obj, "description");

 if (schema == ((void*)0) || tests == ((void*)0) || description == ((void*)0)) {
  fprintf (stdout, "Bad test case\n");
  return EXIT_FAILURE;
 }

 memset (&err, 0, sizeof (err));

 while ((test = ucl_object_iterate (tests, &iter, 1)) != ((void*)0)) {
  if (!perform_test (schema, test, &err)) {
   fprintf (stdout, "Test suite '%s' failed\n",
       ucl_object_tostring (description));
   return EXIT_FAILURE;
  }
 }

 return 0;
}
