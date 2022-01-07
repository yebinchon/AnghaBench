
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_group {int wfd_ie; int noa; struct p2p_group* cfg; struct p2p_data* p2p; } ;
struct p2p_data {size_t num_groups; struct p2p_group** groups; } ;


 int os_free (struct p2p_group*) ;
 int p2p_group_free_members (struct p2p_group*) ;
 int wpabuf_free (int ) ;

void p2p_group_deinit(struct p2p_group *group)
{
 size_t g;
 struct p2p_data *p2p;

 if (group == ((void*)0))
  return;

 p2p = group->p2p;

 for (g = 0; g < p2p->num_groups; g++) {
  if (p2p->groups[g] == group) {
   while (g + 1 < p2p->num_groups) {
    p2p->groups[g] = p2p->groups[g + 1];
    g++;
   }
   p2p->num_groups--;
   break;
  }
 }

 p2p_group_free_members(group);
 os_free(group->cfg);
 wpabuf_free(group->noa);
 wpabuf_free(group->wfd_ie);
 os_free(group);
}
