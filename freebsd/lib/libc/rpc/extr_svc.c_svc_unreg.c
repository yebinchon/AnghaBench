
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_callout {struct svc_callout* sc_netid; int * sc_next; } ;
typedef int rpcvers_t ;
typedef int rpcprog_t ;


 int mem_free (struct svc_callout*,int) ;
 int rpcb_unset (int const,int const,int *) ;
 int rwlock_unlock (int *) ;
 int rwlock_wrlock (int *) ;
 struct svc_callout* svc_find (int const,int const,struct svc_callout**,int *) ;
 int * svc_head ;
 int svc_lock ;

void
svc_unreg(const rpcprog_t prog, const rpcvers_t vers)
{
 struct svc_callout *prev;
 struct svc_callout *s;


 (void) rpcb_unset(prog, vers, ((void*)0));
 rwlock_wrlock(&svc_lock);
 while ((s = svc_find(prog, vers, &prev, ((void*)0))) != ((void*)0)) {
  if (prev == ((void*)0)) {
   svc_head = s->sc_next;
  } else {
   prev->sc_next = s->sc_next;
  }
  s->sc_next = ((void*)0);
  if (s->sc_netid)
   mem_free(s->sc_netid, sizeof (s->sc_netid) + 1);
  mem_free(s, sizeof (struct svc_callout));
 }
 rwlock_unlock(&svc_lock);
}
