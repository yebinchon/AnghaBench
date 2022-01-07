
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int visiting_number; int seen; scalar_t__ to; scalar_t__ from; int num_deps; struct TYPE_7__* next; TYPE_1__* deps; } ;
typedef TYPE_2__ cdg_vertex_t ;
struct TYPE_6__ {TYPE_2__* v; } ;


 int CL_ASSERT (int) ;

__attribute__((used)) static int cycle_exists(cdg_vertex_t * start, cdg_vertex_t * current,
   cdg_vertex_t * prev, int visit_num)
{
 int i, new_visit_num;
 int cycle_found = 0;

 if (current != ((void*)0) && current->visiting_number > 0) {
  if (visit_num > current->visiting_number && current->seen == 0) {
   cycle_found = 1;
  }
 } else {
  if (current == ((void*)0)) {
   current = start;
   CL_ASSERT(prev == ((void*)0));
  }

  current->visiting_number = visit_num;

  if (prev != ((void*)0)) {
   prev->next = current;
   CL_ASSERT(prev->to == current->from);
   CL_ASSERT(prev->visiting_number > 0);
  }

  new_visit_num = visit_num + 1;

  for (i = 0; i < current->num_deps; i++) {
   cycle_found =
       cycle_exists(start, current->deps[i].v, current,
      new_visit_num);
   if (cycle_found == 1)
    i = current->num_deps;
  }

  current->seen = 1;
  if (prev != ((void*)0))
   prev->next = ((void*)0);
 }

 return cycle_found;
}
