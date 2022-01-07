
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ type; } ;
typedef TYPE_1__ ucl_object_t ;
typedef int * ucl_object_iter_t ;
struct ucl_schema_error {int dummy; } ;


 scalar_t__ UCL_ARRAY ;
 scalar_t__ UCL_OBJECT ;
 int UCL_SCHEMA_MISSING_DEPENDENCY ;
 TYPE_1__* ucl_object_iterate (TYPE_1__ const*,int **,int) ;
 int ucl_object_key (TYPE_1__ const*) ;
 TYPE_1__* ucl_object_lookup (TYPE_1__ const*,int ) ;
 int ucl_object_tostring (TYPE_1__ const*) ;
 int ucl_schema_create_error (struct ucl_schema_error*,int ,TYPE_1__ const*,char*,int ,int ) ;
 int ucl_schema_validate (TYPE_1__ const*,TYPE_1__ const*,int,struct ucl_schema_error*,TYPE_1__ const*,TYPE_1__*) ;

__attribute__((used)) static bool
ucl_schema_validate_dependencies (const ucl_object_t *deps,
  const ucl_object_t *obj, struct ucl_schema_error *err,
  const ucl_object_t *root,
  ucl_object_t *ext_ref)
{
 const ucl_object_t *elt, *cur, *cur_dep;
 ucl_object_iter_t iter = ((void*)0), piter;
 bool ret = 1;

 while (ret && (cur = ucl_object_iterate (deps, &iter, 1)) != ((void*)0)) {
  elt = ucl_object_lookup (obj, ucl_object_key (cur));
  if (elt != ((void*)0)) {

   if (cur->type == UCL_ARRAY) {
    piter = ((void*)0);
    while (ret && (cur_dep = ucl_object_iterate (cur, &piter, 1)) != ((void*)0)) {
     if (ucl_object_lookup (obj, ucl_object_tostring (cur_dep)) == ((void*)0)) {
      ucl_schema_create_error (err, UCL_SCHEMA_MISSING_DEPENDENCY, elt,
        "dependency %s is missing for key %s",
        ucl_object_tostring (cur_dep), ucl_object_key (cur));
      ret = 0;
      break;
     }
    }
   }
   else if (cur->type == UCL_OBJECT) {
    ret = ucl_schema_validate (cur, obj, 1, err, root, ext_ref);
   }
  }
 }

 return ret;
}
