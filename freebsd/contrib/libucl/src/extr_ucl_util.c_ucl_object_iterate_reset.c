
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef int ucl_object_iter_t ;
struct ucl_object_safe_iter {int * expl_it; int const* impl_it; } ;


 int UCL_FREE (int,int *) ;
 struct ucl_object_safe_iter* UCL_SAFE_ITER (int ) ;
 int UCL_SAFE_ITER_CHECK (struct ucl_object_safe_iter*) ;

ucl_object_iter_t
ucl_object_iterate_reset (ucl_object_iter_t it, const ucl_object_t *obj)
{
 struct ucl_object_safe_iter *rit = UCL_SAFE_ITER (it);

 UCL_SAFE_ITER_CHECK (rit);

 if (rit->expl_it != ((void*)0)) {
  UCL_FREE (sizeof (*rit->expl_it), rit->expl_it);
 }

 rit->impl_it = obj;
 rit->expl_it = ((void*)0);

 return it;
}
