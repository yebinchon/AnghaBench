
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
struct ucl_schema_error {int dummy; } ;


 int ucl_object_validate_root_ext (int const*,int const*,int const*,int *,struct ucl_schema_error*) ;

bool
ucl_object_validate_root (const ucl_object_t *schema,
  const ucl_object_t *obj,
  const ucl_object_t *root,
  struct ucl_schema_error *err)
{
 return ucl_object_validate_root_ext (schema, obj, root, ((void*)0), err);
}
