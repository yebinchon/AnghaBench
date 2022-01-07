
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct valuelist {int port; struct valuelist* next; struct valuelist* prev; int name; } ;


 int sscanf (char const*,char*,int*) ;
 scalar_t__ strcasecmp (int ,char const*) ;

__attribute__((used)) static int
findservice(const char *s, struct valuelist **list) {
 struct valuelist *lp = *list;
 int n;

 for (; lp != ((void*)0); lp = lp->next)
  if (strcasecmp(lp->name, s) == 0) {
   if (lp != *list) {
    lp->prev->next = lp->next;
    if (lp->next)
     lp->next->prev = lp->prev;
    (*list)->prev = lp;
    lp->next = *list;
    *list = lp;
   }
   return (lp->port);
  }
 if (sscanf(s, "%d", &n) != 1 || n <= 0)
  n = -1;
 return (n);
}
