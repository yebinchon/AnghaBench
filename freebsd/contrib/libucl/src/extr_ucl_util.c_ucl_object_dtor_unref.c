
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ref; } ;
typedef TYPE_1__ ucl_object_t ;


 int ucl_object_dtor_free (TYPE_1__*) ;
 int ucl_object_dtor_unref_single (TYPE_1__*) ;

__attribute__((used)) static void
ucl_object_dtor_unref (ucl_object_t *obj)
{
 if (obj->ref == 0) {
  ucl_object_dtor_free (obj);
 }
 else {

  ucl_object_dtor_unref_single (obj);
 }
}
