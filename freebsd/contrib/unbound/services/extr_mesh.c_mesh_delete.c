
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int root; scalar_t__ count; } ;
struct mesh_area {int qbuf_bak; int histogram; TYPE_1__ all; } ;


 int free (struct mesh_area*) ;
 int mesh_delete_helper (int ) ;
 int sldns_buffer_free (int ) ;
 int timehist_delete (int ) ;

void
mesh_delete(struct mesh_area* mesh)
{
 if(!mesh)
  return;

 while(mesh->all.count)
  mesh_delete_helper(mesh->all.root);
 timehist_delete(mesh->histogram);
 sldns_buffer_free(mesh->qbuf_bak);
 free(mesh);
}
