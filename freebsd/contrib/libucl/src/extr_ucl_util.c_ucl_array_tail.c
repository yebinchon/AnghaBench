
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * av; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_1__ value; } ;
typedef TYPE_2__ ucl_object_t ;
struct TYPE_10__ {int n; TYPE_2__ const** a; } ;


 scalar_t__ UCL_ARRAY ;
 int UCL_ARRAY_GET (TYPE_3__*,TYPE_2__ const*) ;
 TYPE_3__* vec ;

const ucl_object_t *
ucl_array_tail (const ucl_object_t *top)
{
 UCL_ARRAY_GET (vec, top);

 if (top == ((void*)0) || top->type != UCL_ARRAY || top->value.av == ((void*)0)) {
  return ((void*)0);
 }

 return (vec->n > 0 ? vec->a[vec->n - 1] : ((void*)0));
}
