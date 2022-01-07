
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ucl_userdata_emitter ;
typedef int ucl_userdata_dtor ;
typedef int ucl_object_t ;
struct TYPE_3__ {void* ud; } ;
struct TYPE_4__ {int ref; TYPE_1__ value; int * prev; int * next; int type; } ;
struct ucl_object_userdata {TYPE_2__ obj; int emitter; int dtor; } ;


 struct ucl_object_userdata* UCL_ALLOC (size_t) ;
 int UCL_USERDATA ;
 int memset (struct ucl_object_userdata*,int ,size_t) ;

ucl_object_t*
ucl_object_new_userdata (ucl_userdata_dtor dtor,
  ucl_userdata_emitter emitter,
  void *ptr)
{
 struct ucl_object_userdata *new;
 size_t nsize = sizeof (*new);

 new = UCL_ALLOC (nsize);
 if (new != ((void*)0)) {
  memset (new, 0, nsize);
  new->obj.ref = 1;
  new->obj.type = UCL_USERDATA;
  new->obj.next = ((void*)0);
  new->obj.prev = (ucl_object_t *)new;
  new->dtor = dtor;
  new->emitter = emitter;
  new->obj.value.ud = ptr;
 }

 return (ucl_object_t *)new;
}
