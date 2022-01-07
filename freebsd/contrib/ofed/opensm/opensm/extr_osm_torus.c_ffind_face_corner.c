
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

__attribute__((used)) static
struct f_switch *ffind_face_corner(struct f_switch *fsw0,
       struct f_switch *fsw1,
       struct f_switch *fsw2)
{
 int p0, p3;
 struct link *l;
 struct endpoint *far_end;
 struct f_switch *fsw, *fsw3 = ((void*)0);

 if (!(fsw0 && fsw1 && fsw2))
  goto out;

 for (p0 = 0; p0 < fsw0->port_cnt; p0++) {




  if (!(fsw0->port[p0] && fsw0->port[p0]->sw &&
        fsw0->port[p0]->type == PASSTHRU))
   continue;

  l = fsw0->port[p0]->link;

  if (l->end[0].n_id == fsw0->n_id)
   far_end = &l->end[1];
  else
   far_end = &l->end[0];




  if (!(far_end->type == PASSTHRU && far_end->sw))
   continue;

  fsw3 = far_end->sw;
  if (fsw3->n_id == fsw1->n_id)
   continue;

  for (p3 = 0; p3 < fsw3->port_cnt; p3++) {




   if (!(fsw3->port[p3] && fsw3->port[p3]->sw &&
         fsw3->port[p3]->type == PASSTHRU))
    continue;

   l = fsw3->port[p3]->link;

   if (l->end[0].n_id == fsw3->n_id)
    far_end = &l->end[1];
   else
    far_end = &l->end[0];




   if (!(far_end->type == PASSTHRU && far_end->sw))
    continue;

   fsw = far_end->sw;
   if (fsw->n_id == fsw2->n_id)
    goto out;
  }
 }
 fsw3 = ((void*)0);
out:
 return fsw3;
}
