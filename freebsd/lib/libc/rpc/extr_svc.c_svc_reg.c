
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct svc_callout {void (* sc_dispatch ) (struct svc_req*,TYPE_1__*) ;char* sc_netid; struct svc_callout* sc_next; int sc_vers; int sc_prog; } ;
struct netconfig {char* nc_netid; } ;
typedef int rpcvers_t ;
typedef int rpcprog_t ;
typedef int bool_t ;
struct TYPE_5__ {char* xp_netid; int xp_ltaddr; int xp_fd; } ;
typedef TYPE_1__ SVCXPRT ;


 int FALSE ;
 int TRUE ;
 struct netconfig* __rpcgettp (int ) ;
 int free (char*) ;
 int freenetconfigent (struct netconfig*) ;
 struct svc_callout* mem_alloc (int) ;
 int rpcb_set (int const,int const,struct netconfig*,int *) ;
 int rwlock_unlock (int *) ;
 int rwlock_wrlock (int *) ;
 void* strdup (char*) ;
 struct svc_callout* svc_find (int const,int const,struct svc_callout**,char*) ;
 struct svc_callout* svc_head ;
 int svc_lock ;

bool_t
svc_reg(SVCXPRT *xprt, const rpcprog_t prog, const rpcvers_t vers,
    void (*dispatch)(struct svc_req *, SVCXPRT *),
    const struct netconfig *nconf)
{
 bool_t dummy;
 struct svc_callout *prev;
 struct svc_callout *s;
 struct netconfig *tnconf;
 char *netid = ((void*)0);
 int flag = 0;



 if (xprt->xp_netid) {
  netid = strdup(xprt->xp_netid);
  flag = 1;
 } else if (nconf && nconf->nc_netid) {
  netid = strdup(nconf->nc_netid);
  flag = 1;
 } else if ((tnconf = __rpcgettp(xprt->xp_fd)) != ((void*)0)) {
  netid = strdup(tnconf->nc_netid);
  flag = 1;
  freenetconfigent(tnconf);
 }
 if ((netid == ((void*)0)) && (flag == 1)) {
  return (FALSE);
 }

 rwlock_wrlock(&svc_lock);
 if ((s = svc_find(prog, vers, &prev, netid)) != ((void*)0)) {
  free(netid);
  if (s->sc_dispatch == dispatch)
   goto rpcb_it;
  rwlock_unlock(&svc_lock);
  return (FALSE);
 }
 s = mem_alloc(sizeof (struct svc_callout));
 if (s == ((void*)0)) {
  free(netid);
  rwlock_unlock(&svc_lock);
  return (FALSE);
 }

 s->sc_prog = prog;
 s->sc_vers = vers;
 s->sc_dispatch = dispatch;
 s->sc_netid = netid;
 s->sc_next = svc_head;
 svc_head = s;

 if ((xprt->xp_netid == ((void*)0)) && (flag == 1) && netid)
  ((SVCXPRT *) xprt)->xp_netid = strdup(netid);

rpcb_it:
 rwlock_unlock(&svc_lock);

 if (nconf) {

  dummy = rpcb_set(prog, vers, (struct netconfig *) nconf,
  &((SVCXPRT *) xprt)->xp_ltaddr);
  return (dummy);
 }
 return (TRUE);
}
