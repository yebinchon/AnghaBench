
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tube_res_list {struct tube_res_list* buf; struct tube_res_list* next; } ;
struct tube {int * res_last; struct tube_res_list* res_list; int * res_com; } ;


 int comm_point_delete (int *) ;
 int free (struct tube_res_list*) ;

void tube_remove_bg_write(struct tube* tube)
{
 if(tube->res_com) {
  comm_point_delete(tube->res_com);
  tube->res_com = ((void*)0);
 }
 if(tube->res_list) {
  struct tube_res_list* np, *p = tube->res_list;
  tube->res_list = ((void*)0);
  tube->res_last = ((void*)0);
  while(p) {
   np = p->next;
   free(p->buf);
   free(p);
   p = np;
  }
 }
}
