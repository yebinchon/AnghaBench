
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* size; struct TYPE_4__* class_count; struct TYPE_4__* class_type; } ;
typedef TYPE_1__ mesh_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void mesh_delete(mesh_t *mesh)
{
 if (mesh) {
  if (mesh->class_type)
   free(mesh->class_type);

  if (mesh->class_count)
   free(mesh->class_count);

  if (mesh->size)
   free(mesh->size);

  free(mesh);
 }
}
