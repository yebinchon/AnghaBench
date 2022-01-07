
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_group_member {struct p2p_group_member* next; } ;
struct p2p_group {scalar_t__ num_members; struct p2p_group_member* members; } ;


 int p2p_group_free_member (struct p2p_group_member*) ;

__attribute__((used)) static void p2p_group_free_members(struct p2p_group *group)
{
 struct p2p_group_member *m, *prev;
 m = group->members;
 group->members = ((void*)0);
 group->num_members = 0;
 while (m) {
  prev = m;
  m = m->next;
  p2p_group_free_member(prev);
 }
}
