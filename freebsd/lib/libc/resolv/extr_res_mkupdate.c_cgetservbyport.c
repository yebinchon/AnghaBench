
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
struct valuelist {int proto; scalar_t__ port; int name; struct valuelist* next; struct valuelist* prev; } ;
struct servent {int s_proto; int s_port; int s_name; } ;


 int htons (scalar_t__) ;
 scalar_t__ ntohs (scalar_t__) ;
 struct valuelist* servicelist ;
 scalar_t__ strcasecmp (int ,char const*) ;

__attribute__((used)) static struct servent *
cgetservbyport(u_int16_t port, const char *proto) {
 struct valuelist **list = &servicelist;
 struct valuelist *lp = *list;
 static struct servent serv;

 port = ntohs(port);
 for (; lp != ((void*)0); lp = lp->next) {
  if (port != (u_int16_t)lp->port)
   continue;
  if (strcasecmp(lp->proto, proto) == 0) {
   if (lp != *list) {
    lp->prev->next = lp->next;
    if (lp->next)
     lp->next->prev = lp->prev;
    (*list)->prev = lp;
    lp->next = *list;
    *list = lp;
   }
   serv.s_name = lp->name;
   serv.s_port = htons((u_int16_t)lp->port);
   serv.s_proto = lp->proto;
   return (&serv);
  }
 }
 return (0);
}
