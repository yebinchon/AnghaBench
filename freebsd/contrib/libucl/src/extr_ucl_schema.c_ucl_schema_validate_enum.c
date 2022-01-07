
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef int * ucl_object_iter_t ;
struct ucl_schema_error {int dummy; } ;


 int UCL_SCHEMA_CONSTRAINT ;
 scalar_t__ ucl_object_compare (int const*,int const*) ;
 int * ucl_object_iterate (int const*,int **,int) ;
 int ucl_schema_create_error (struct ucl_schema_error*,int ,int const*,char*) ;

__attribute__((used)) static bool
ucl_schema_validate_enum (const ucl_object_t *en, const ucl_object_t *obj,
  struct ucl_schema_error *err)
{
 ucl_object_iter_t iter = ((void*)0);
 const ucl_object_t *elt;
 bool ret = 0;

 while ((elt = ucl_object_iterate (en, &iter, 1)) != ((void*)0)) {
  if (ucl_object_compare (elt, obj) == 0) {
   ret = 1;
   break;
  }
 }

 if (!ret) {
  ucl_schema_create_error (err, UCL_SCHEMA_CONSTRAINT, obj,
    "object is not one of enumerated patterns");
 }

 return ret;
}
