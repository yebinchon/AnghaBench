
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; struct TYPE_6__* next; } ;
typedef TYPE_1__ ucl_object_t ;
typedef int ucl_object_iter_t ;
struct ucl_object_safe_iter {TYPE_1__* impl_it; int * expl_it; } ;
typedef enum ucl_iterate_type { ____Placeholder_ucl_iterate_type } ucl_iterate_type ;


 scalar_t__ UCL_ARRAY ;
 int UCL_ITERATE_EXPLICIT ;
 int UCL_ITERATE_IMPLICIT ;
 scalar_t__ UCL_OBJECT ;
 struct ucl_object_safe_iter* UCL_SAFE_ITER (int ) ;
 int UCL_SAFE_ITER_CHECK (struct ucl_object_safe_iter*) ;
 TYPE_1__* ucl_object_iterate (TYPE_1__*,int **,int) ;
 TYPE_1__ const* ucl_object_iterate_safe (int ,int) ;

const ucl_object_t*
ucl_object_iterate_full (ucl_object_iter_t it, enum ucl_iterate_type type)
{
 struct ucl_object_safe_iter *rit = UCL_SAFE_ITER (it);
 const ucl_object_t *ret = ((void*)0);

 UCL_SAFE_ITER_CHECK (rit);

 if (rit->impl_it == ((void*)0)) {
  return ((void*)0);
 }

 if (rit->impl_it->type == UCL_OBJECT || rit->impl_it->type == UCL_ARRAY) {
  ret = ucl_object_iterate (rit->impl_it, &rit->expl_it, 1);

  if (ret == ((void*)0) && (type & UCL_ITERATE_IMPLICIT)) {

   rit->impl_it = rit->impl_it->next;
   rit->expl_it = ((void*)0);

   return ucl_object_iterate_safe (it, type);
  }
 }
 else {

  ret = rit->impl_it;
  rit->impl_it = rit->impl_it->next;

  if (type & UCL_ITERATE_EXPLICIT) {

   if (ret->type == UCL_OBJECT || ret->type == UCL_ARRAY) {
    return ucl_object_iterate_safe (it, type);
   }
  }
 }

 return ret;
}
