
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;


 int ucl_object_dtor_free ;
 int ucl_object_free_internal (int *,int,int ) ;

void
ucl_object_free (ucl_object_t *obj)
{
 ucl_object_free_internal (obj, 1, ucl_object_dtor_free);
}
