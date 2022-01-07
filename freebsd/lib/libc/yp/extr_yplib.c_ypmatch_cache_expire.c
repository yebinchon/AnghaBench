
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct ypmatch_ent {scalar_t__ ypc_expire_t; struct ypmatch_ent* ypc_next; } ;
struct dom_binding {struct ypmatch_ent* cache; } ;


 int time (scalar_t__*) ;
 int ypmatch_cache_delete (struct dom_binding*,struct ypmatch_ent*,struct ypmatch_ent*) ;

__attribute__((used)) static void
ypmatch_cache_expire(struct dom_binding *ypdb)
{
 struct ypmatch_ent *c = ypdb->cache;
 struct ypmatch_ent *n, *p = ((void*)0);
 time_t t;

 time(&t);

 while (c != ((void*)0)) {
  if (t >= c->ypc_expire_t) {
   n = c->ypc_next;
   ypmatch_cache_delete(ypdb, p, c);
   c = n;
  } else {
   p = c;
   c = c->ypc_next;
  }
 }

 return;
}
