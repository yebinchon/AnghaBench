
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void ucl_object_t ;
struct TYPE_4__ {int n; int * a; } ;
struct TYPE_5__ {TYPE_1__ ar; } ;
typedef TYPE_2__ ucl_hash_t ;
typedef struct ucl_hash_real_iter* ucl_hash_iter_t ;
struct ucl_hash_real_iter {int * cur; int * end; } ;


 struct ucl_hash_real_iter* UCL_ALLOC (int) ;
 int UCL_FREE (int,struct ucl_hash_real_iter*) ;

const void*
ucl_hash_iterate (ucl_hash_t *hashlin, ucl_hash_iter_t *iter)
{
 struct ucl_hash_real_iter *it = (struct ucl_hash_real_iter *)(*iter);
 const ucl_object_t *ret = ((void*)0);

 if (hashlin == ((void*)0)) {
  return ((void*)0);
 }

 if (it == ((void*)0)) {
  it = UCL_ALLOC (sizeof (*it));

  if (it == ((void*)0)) {
   return ((void*)0);
  }

  it->cur = &hashlin->ar.a[0];
  it->end = it->cur + hashlin->ar.n;
 }

 if (it->cur < it->end) {
  ret = *it->cur++;
 }
 else {
  UCL_FREE (sizeof (*it), it);
  *iter = ((void*)0);
  return ((void*)0);
 }

 *iter = it;

 return ret;
}
