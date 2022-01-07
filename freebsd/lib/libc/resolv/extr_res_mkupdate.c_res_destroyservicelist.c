
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct valuelist {struct valuelist* proto; struct valuelist* name; struct valuelist* next; } ;


 int free (struct valuelist*) ;
 struct valuelist* servicelist ;

void
res_destroyservicelist() {
 struct valuelist *slp, *slp_next;

 for (slp = servicelist; slp != ((void*)0); slp = slp_next) {
  slp_next = slp->next;
  free(slp->name);
  free(slp->proto);
  free(slp);
 }
 servicelist = (struct valuelist *)0;
}
