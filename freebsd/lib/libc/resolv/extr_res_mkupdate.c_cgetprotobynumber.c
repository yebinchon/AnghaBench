
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct valuelist {int port; int name; struct valuelist* next; struct valuelist* prev; } ;
struct protoent {int p_proto; int p_name; } ;


 struct valuelist* protolist ;

__attribute__((used)) static struct protoent *
cgetprotobynumber(int proto) {
 struct valuelist **list = &protolist;
 struct valuelist *lp = *list;
 static struct protoent prot;

 for (; lp != ((void*)0); lp = lp->next)
  if (lp->port == proto) {
   if (lp != *list) {
    lp->prev->next = lp->next;
    if (lp->next)
     lp->next->prev = lp->prev;
    (*list)->prev = lp;
    lp->next = *list;
    *list = lp;
   }
   prot.p_name = lp->name;
   prot.p_proto = lp->port;
   return (&prot);
  }
 return (0);
}
