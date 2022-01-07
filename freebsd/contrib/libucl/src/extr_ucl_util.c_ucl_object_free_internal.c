
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int * ov; int * av; } ;
struct TYPE_14__ {scalar_t__ type; struct TYPE_14__* next; TYPE_1__ value; } ;
typedef TYPE_2__ ucl_object_t ;
typedef int (* ucl_object_dtor ) (TYPE_2__*) ;
typedef int ucl_hash_free_func ;
struct TYPE_15__ {unsigned int n; } ;


 scalar_t__ UCL_ARRAY ;
 int UCL_ARRAY_GET (TYPE_4__*,TYPE_2__*) ;
 int UCL_FREE (int,TYPE_4__*) ;
 scalar_t__ UCL_OBJECT ;
 TYPE_2__* kv_A (TYPE_4__,unsigned int) ;
 int kv_destroy (TYPE_4__) ;
 int ucl_hash_destroy (int *,int ) ;
 TYPE_4__* vec ;

__attribute__((used)) static void
ucl_object_free_internal (ucl_object_t *obj, bool allow_rec, ucl_object_dtor dtor)
{
 ucl_object_t *tmp, *sub;

 while (obj != ((void*)0)) {
  if (obj->type == UCL_ARRAY) {
   UCL_ARRAY_GET (vec, obj);
   unsigned int i;

   if (vec != ((void*)0)) {
    for (i = 0; i < vec->n; i ++) {
     sub = kv_A (*vec, i);
     if (sub != ((void*)0)) {
      tmp = sub;
      while (sub) {
       tmp = sub->next;
       dtor (sub);
       sub = tmp;
      }
     }
    }
    kv_destroy (*vec);
    UCL_FREE (sizeof (*vec), vec);
   }
   obj->value.av = ((void*)0);
  }
  else if (obj->type == UCL_OBJECT) {
   if (obj->value.ov != ((void*)0)) {
    ucl_hash_destroy (obj->value.ov, (ucl_hash_free_func)dtor);
   }
   obj->value.ov = ((void*)0);
  }
  tmp = obj->next;
  dtor (obj);
  obj = tmp;

  if (!allow_rec) {
   break;
  }
 }
}
