
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct p2p_group_member {struct p2p_group_member* next; } ;
struct p2p_group {struct p2p_group_member* members; int p2p; } ;


 scalar_t__ p2p_match_dev_type (int ,struct wpabuf*) ;
 scalar_t__ p2p_match_dev_type_member (struct p2p_group_member*,struct wpabuf*) ;

int p2p_group_match_dev_type(struct p2p_group *group, struct wpabuf *wps)
{
 struct p2p_group_member *m;

 if (p2p_match_dev_type(group->p2p, wps))
  return 1;

 for (m = group->members; m; m = m->next) {
  if (p2p_match_dev_type_member(m, wps))
   return 1;
 }


 return 0;
}
