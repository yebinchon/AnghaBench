
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zv_extents; } ;
typedef TYPE_1__ zvol_state_t ;
typedef int zvol_extent_t ;


 int kmem_free (int *,int) ;
 int * list_head (int *) ;
 int list_remove (int *,int *) ;

__attribute__((used)) static void
zvol_free_extents(zvol_state_t *zv)
{
 zvol_extent_t *ze;

 while (ze = list_head(&zv->zv_extents)) {
  list_remove(&zv->zv_extents, ze);
  kmem_free(ze, sizeof (zvol_extent_t));
 }
}
