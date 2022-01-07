
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int root; scalar_t__ count; } ;
struct mesh_area {int * jostle_last; int * jostle_first; int * forever_last; int * forever_first; scalar_t__ num_forever_states; scalar_t__ num_detached_states; scalar_t__ num_reply_states; scalar_t__ num_reply_addrs; TYPE_1__ all; TYPE_1__ run; int stats_dropped; } ;


 int mesh_delete_helper (int ) ;
 int mesh_state_compare ;
 int rbtree_init (TYPE_1__*,int *) ;

void
mesh_delete_all(struct mesh_area* mesh)
{

 while(mesh->all.count)
  mesh_delete_helper(mesh->all.root);
 mesh->stats_dropped += mesh->num_reply_addrs;

 rbtree_init(&mesh->run, &mesh_state_compare);
 rbtree_init(&mesh->all, &mesh_state_compare);
 mesh->num_reply_addrs = 0;
 mesh->num_reply_states = 0;
 mesh->num_detached_states = 0;
 mesh->num_forever_states = 0;
 mesh->forever_first = ((void*)0);
 mesh->forever_last = ((void*)0);
 mesh->jostle_first = ((void*)0);
 mesh->jostle_last = ((void*)0);
}
