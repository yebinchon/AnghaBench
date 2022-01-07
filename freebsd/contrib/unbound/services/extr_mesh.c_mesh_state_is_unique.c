
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_state {int * unique; } ;



int
mesh_state_is_unique(struct mesh_state* mstate)
{
 return mstate->unique != ((void*)0);
}
