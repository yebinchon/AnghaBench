
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_list {struct ip_list* next; int used; } ;



__attribute__((used)) static int
count_unused(struct ip_list* p)
{
 int num = 0;
 while(p) {
  if(!p->used) num++;
  p = p->next;
 }
 return num;
}
