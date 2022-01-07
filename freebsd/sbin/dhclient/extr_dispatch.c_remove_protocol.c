
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protocol {struct protocol* next; } ;


 int free (struct protocol*) ;
 struct protocol* protocols ;

void
remove_protocol(struct protocol *proto)
{
 struct protocol *p, *next;

 for (p = protocols; p; p = next) {
  next = p->next;
  if (p == proto) {
   protocols = p->next;
   free(p);
  }
 }
}
