
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ypmatch_ent {struct ypmatch_ent* ypc_next; } ;
struct dom_binding {struct ypmatch_ent* cache; } ;


 int ypmatch_cache_delete (struct dom_binding*,int *,struct ypmatch_ent*) ;

__attribute__((used)) static void
ypmatch_cache_flush(struct dom_binding *ypdb)
{
 struct ypmatch_ent *n, *c = ypdb->cache;

 while (c != ((void*)0)) {
  n = c->ypc_next;
  ypmatch_cache_delete(ypdb, ((void*)0), c);
  c = n;
 }

 return;
}
