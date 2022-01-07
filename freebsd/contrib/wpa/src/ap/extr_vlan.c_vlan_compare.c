
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_description {scalar_t__ untagged; scalar_t__* tagged; int notempty; } ;


 int MAX_NUM_TAGGED_VLAN ;

int vlan_compare(struct vlan_description *a, struct vlan_description *b)
{
 int i;
 const int a_empty = !a || !a->notempty;
 const int b_empty = !b || !b->notempty;

 if (a_empty && b_empty)
  return 0;
 if (a_empty || b_empty)
  return 1;
 if (a->untagged != b->untagged)
  return 1;
 for (i = 0; i < MAX_NUM_TAGGED_VLAN; i++) {
  if (a->tagged[i] != b->tagged[i])
   return 1;
 }
 return 0;
}
