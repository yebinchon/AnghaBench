
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ud; } ;
struct TYPE_7__ {int keylen; } ;
struct TYPE_8__ {int len; int flags; scalar_t__ type; TYPE_1__ value; struct TYPE_8__** trash_stack; TYPE_2__ hh; } ;
typedef TYPE_3__ ucl_object_t ;
struct ucl_object_userdata {int (* dtor ) (int ) ;} ;


 int UCL_FREE (int,TYPE_3__*) ;
 int UCL_OBJECT_EPHEMERAL ;
 size_t UCL_TRASH_KEY ;
 size_t UCL_TRASH_VALUE ;
 scalar_t__ UCL_USERDATA ;
 int stub1 (int ) ;

__attribute__((used)) static void
ucl_object_dtor_free (ucl_object_t *obj)
{
 if (obj->trash_stack[UCL_TRASH_KEY] != ((void*)0)) {
  UCL_FREE (obj->hh.keylen, obj->trash_stack[UCL_TRASH_KEY]);
 }
 if (obj->trash_stack[UCL_TRASH_VALUE] != ((void*)0)) {
  UCL_FREE (obj->len, obj->trash_stack[UCL_TRASH_VALUE]);
 }

 if ((obj->flags & UCL_OBJECT_EPHEMERAL) == 0) {
  if (obj->type != UCL_USERDATA) {
   UCL_FREE (sizeof (ucl_object_t), obj);
  }
  else {
   struct ucl_object_userdata *ud = (struct ucl_object_userdata *)obj;
   if (ud->dtor) {
    ud->dtor (obj->value.ud);
   }
   UCL_FREE (sizeof (*ud), obj);
  }
 }
}
