
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_state {struct mesh_state* next; struct mesh_state* prev; } ;



void mesh_list_remove(struct mesh_state* m, struct mesh_state** fp,
        struct mesh_state** lp)
{
 if(m->next)
  m->next->prev = m->prev;
 else *lp = m->prev;
 if(m->prev)
  m->prev->next = m->next;
 else *fp = m->next;
}
