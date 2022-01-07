
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_state {struct mesh_state* unique; } ;



void
mesh_state_make_unique(struct mesh_state* mstate)
{
 mstate->unique = mstate;
}
