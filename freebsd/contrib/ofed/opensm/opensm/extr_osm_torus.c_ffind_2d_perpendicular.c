
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link {struct endpoint* end; } ;
struct f_switch {int port_cnt; scalar_t__ n_id; TYPE_1__** port; } ;
struct endpoint {scalar_t__ n_id; scalar_t__ type; struct f_switch* sw; } ;
struct TYPE_2__ {scalar_t__ type; struct link* link; scalar_t__ sw; } ;


 scalar_t__ PASSTHRU ;
 scalar_t__ ffind_face_corner (struct f_switch*,struct f_switch*,struct f_switch*) ;

struct f_switch *ffind_2d_perpendicular(struct f_switch *fsw0,
     struct f_switch *fsw1,
     struct f_switch *fsw2)
{
 int p1;
 struct link *l;
 struct endpoint *far_end;
 struct f_switch *fsw3 = ((void*)0);

 if (!(fsw0 && fsw1 && fsw2))
  goto out;





 for (p1 = 0; p1 < fsw1->port_cnt; p1++) {




  if (!(fsw1->port[p1] && fsw1->port[p1]->sw &&
        fsw1->port[p1]->type == PASSTHRU))
   continue;

  l = fsw1->port[p1]->link;

  if (l->end[0].n_id == fsw1->n_id)
   far_end = &l->end[1];
  else
   far_end = &l->end[0];



  if (!(far_end->type == PASSTHRU && far_end->sw))
   continue;

  fsw3 = far_end->sw;
  if (fsw3->n_id == fsw2->n_id)
   continue;

  if (ffind_face_corner(fsw0, fsw1, fsw3))
   goto out;
 }
 fsw3 = ((void*)0);
out:
 return fsw3;
}
