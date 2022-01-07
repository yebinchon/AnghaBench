
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_chunk {scalar_t__ len; struct auth_chunk* next; } ;



__attribute__((used)) static size_t
chunklist_sum(struct auth_chunk* list)
{
 struct auth_chunk* p;
 size_t s = 0;
 for(p=list; p; p=p->next) {
  s += p->len;
 }
 return s;
}
