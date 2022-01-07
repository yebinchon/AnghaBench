
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct valuelist {struct valuelist* prev; struct valuelist* next; int port; int * name; } ;
struct protoent {int p_proto; int p_name; } ;


 int endprotoent () ;
 int free (struct valuelist*) ;
 struct protoent* getprotoent () ;
 scalar_t__ malloc (int) ;
 struct valuelist* protolist ;
 int setprotoent (int) ;
 int * strdup (int ) ;

void
res_buildprotolist(void) {
 struct protoent *pp;
 struct valuelist *slp;




 setprotoent(1);

 while ((pp = getprotoent()) != ((void*)0)) {
  slp = (struct valuelist *)malloc(sizeof(struct valuelist));
  if (!slp)
   break;
  slp->name = strdup(pp->p_name);
  if (slp->name == ((void*)0)) {
   free(slp);
   break;
  }
  slp->port = pp->p_proto;
  slp->next = protolist;
  slp->prev = ((void*)0);
  if (protolist)
   protolist->prev = slp;
  protolist = slp;
 }
 endprotoent();
}
