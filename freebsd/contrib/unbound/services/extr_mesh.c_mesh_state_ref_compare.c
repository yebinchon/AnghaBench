
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_state_ref {int s; } ;


 int mesh_state_compare (int ,int ) ;

int
mesh_state_ref_compare(const void* ap, const void* bp)
{
 struct mesh_state_ref* a = (struct mesh_state_ref*)ap;
 struct mesh_state_ref* b = (struct mesh_state_ref*)bp;
 return mesh_state_compare(a->s, b->s);
}
