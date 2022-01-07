
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ type; } ;
typedef TYPE_1__ ucl_object_t ;
struct TYPE_11__ {int n; int a; } ;


 scalar_t__ UCL_ARRAY ;
 int UCL_ARRAY_GET (TYPE_4__*,TYPE_1__*) ;
 int qsort (int ,int ,int,int (*) (void const*,void const*)) ;
 TYPE_4__* vec ;

void
ucl_object_array_sort (ucl_object_t *ar,
  int (*cmp)(const ucl_object_t **o1, const ucl_object_t **o2))
{
 UCL_ARRAY_GET (vec, ar);

 if (cmp == ((void*)0) || ar == ((void*)0) || ar->type != UCL_ARRAY) {
  return;
 }

 qsort (vec->a, vec->n, sizeof (ucl_object_t *),
   (int (*)(const void *, const void *))cmp);
}
