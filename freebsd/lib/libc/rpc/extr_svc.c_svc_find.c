
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_callout {scalar_t__ sc_prog; scalar_t__ sc_vers; int * sc_netid; struct svc_callout* sc_next; } ;
typedef scalar_t__ rpcvers_t ;
typedef scalar_t__ rpcprog_t ;


 int assert (int ) ;
 scalar_t__ strcmp (char*,int *) ;
 struct svc_callout* svc_head ;

__attribute__((used)) static struct svc_callout *
svc_find(rpcprog_t prog, rpcvers_t vers, struct svc_callout **prev,
    char *netid)
{
 struct svc_callout *s, *p;

 assert(prev != ((void*)0));

 p = ((void*)0);
 for (s = svc_head; s != ((void*)0); s = s->sc_next) {
  if (((s->sc_prog == prog) && (s->sc_vers == vers)) &&
      ((netid == ((void*)0)) || (s->sc_netid == ((void*)0)) ||
      (strcmp(netid, s->sc_netid) == 0)))
   break;
  p = s;
 }
 *prev = p;
 return (s);
}
