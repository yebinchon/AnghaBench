
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef int ucl_object_iter_t ;
struct ucl_object_safe_iter {int const* impl_it; int * expl_it; int magic; } ;


 struct ucl_object_safe_iter* UCL_ALLOC (int) ;
 int memcpy (int ,int ,int) ;
 int safe_iter_magic ;

ucl_object_iter_t
ucl_object_iterate_new (const ucl_object_t *obj)
{
 struct ucl_object_safe_iter *it;

 it = UCL_ALLOC (sizeof (*it));
 if (it != ((void*)0)) {
  memcpy (it->magic, safe_iter_magic, sizeof (it->magic));
  it->expl_it = ((void*)0);
  it->impl_it = obj;
 }

 return (ucl_object_iter_t)it;
}
