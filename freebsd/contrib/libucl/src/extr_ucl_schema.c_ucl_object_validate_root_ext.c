
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
struct ucl_schema_error {int dummy; } ;


 int UCL_OBJECT ;
 int * ucl_object_typed_new (int ) ;
 int ucl_object_unref (int *) ;
 int ucl_schema_validate (int const*,int const*,int,struct ucl_schema_error*,int const*,int *) ;

bool
ucl_object_validate_root_ext (const ucl_object_t *schema,
  const ucl_object_t *obj,
  const ucl_object_t *root,
  ucl_object_t *ext_refs,
  struct ucl_schema_error *err)
{
 bool ret, need_unref = 0;

 if (ext_refs == ((void*)0)) {
  ext_refs = ucl_object_typed_new (UCL_OBJECT);
  need_unref = 1;
 }

 ret = ucl_schema_validate (schema, obj, 1, err, root, ext_refs);

 if (need_unref) {
  ucl_object_unref (ext_refs);
 }

 return ret;
}
