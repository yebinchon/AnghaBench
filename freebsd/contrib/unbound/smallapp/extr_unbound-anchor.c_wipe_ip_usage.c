
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_list {struct ip_list* next; scalar_t__ used; } ;



__attribute__((used)) static void
wipe_ip_usage(struct ip_list* p)
{
 while(p) {
  p->used = 0;
  p = p->next;
 }
}
