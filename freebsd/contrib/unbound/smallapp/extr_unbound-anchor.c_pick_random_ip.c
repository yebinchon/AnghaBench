
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ip_list {struct ip_list* next; scalar_t__ used; } ;


 scalar_t__ arc4random_uniform (int ) ;
 int count_unused (struct ip_list*) ;

__attribute__((used)) static struct ip_list*
pick_random_ip(struct ip_list* list)
{
 struct ip_list* p = list;
 int num = count_unused(list);
 int sel;
 if(num == 0) return ((void*)0);

 sel = (int)arc4random_uniform((uint32_t)num);

 while(sel > 0 && p) {
  if(!p->used) sel--;
  p = p->next;
 }

 while(p && p->used)
  p = p->next;
 if(!p) return ((void*)0);
 return p;
}
