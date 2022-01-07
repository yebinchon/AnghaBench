
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct valuelist {struct valuelist* prev; struct valuelist* next; int port; struct valuelist* proto; struct valuelist* name; } ;
struct servent {scalar_t__ s_port; int s_proto; int s_name; } ;


 int endservent () ;
 int free (struct valuelist*) ;
 struct servent* getservent () ;
 scalar_t__ malloc (int) ;
 int ntohs (int ) ;
 struct valuelist* servicelist ;
 int setservent (int) ;
 void* strdup (int ) ;

__attribute__((used)) static void
res_buildservicelist(void) {
 struct servent *sp;
 struct valuelist *slp;




 setservent(1);

 while ((sp = getservent()) != ((void*)0)) {
  slp = (struct valuelist *)malloc(sizeof(struct valuelist));
  if (!slp)
   break;
  slp->name = strdup(sp->s_name);
  slp->proto = strdup(sp->s_proto);
  if ((slp->name == ((void*)0)) || (slp->proto == ((void*)0))) {
   if (slp->name) free(slp->name);
   if (slp->proto) free(slp->proto);
   free(slp);
   break;
  }
  slp->port = ntohs((u_int16_t)sp->s_port);
  slp->next = servicelist;
  slp->prev = ((void*)0);
  if (servicelist)
   servicelist->prev = slp;
  servicelist = slp;
 }
 endservent();
}
