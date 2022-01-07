
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_state {struct mesh_state* next; struct mesh_state* prev; } ;



void mesh_list_insert(struct mesh_state* m, struct mesh_state** fp,
        struct mesh_state** lp)
{

 m->prev = *lp;
 m->next = ((void*)0);
 if(*lp)
  (*lp)->next = m;
 else *fp = m;
 *lp = m;
}
