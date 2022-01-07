
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mesh_state {int s; } ;
struct TYPE_3__ {scalar_t__ key; } ;
typedef TYPE_1__ rbnode_type ;


 int mesh_state_delete (int *) ;

__attribute__((used)) static void
mesh_delete_helper(rbnode_type* n)
{
 struct mesh_state* mstate = (struct mesh_state*)n->key;



 mesh_state_delete(&mstate->s);


}
