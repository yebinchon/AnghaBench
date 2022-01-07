
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int valdat_len; int valdat_val; } ;
typedef TYPE_3__ valdat ;
typedef scalar_t__ time_t ;
struct TYPE_8__ {int valdat_len; struct ypmatch_ent* valdat_val; } ;
struct TYPE_7__ {int keydat_len; struct ypmatch_ent* keydat_val; } ;
struct ypmatch_ent {struct ypmatch_ent* ypc_next; TYPE_2__ ypc_val; TYPE_1__ ypc_key; scalar_t__ ypc_expire_t; struct ypmatch_ent* ypc_map; } ;
struct dom_binding {scalar_t__ ypmatch_cachecnt; struct ypmatch_ent* cache; } ;
struct TYPE_10__ {int keydat_len; int keydat_val; } ;
typedef TYPE_4__ keydat ;


 scalar_t__ YPLIB_EXPIRE ;
 scalar_t__ YPLIB_MAXCACHE ;
 int bcopy (int ,struct ypmatch_ent*,int) ;
 int free (struct ypmatch_ent*) ;
 void* malloc (int) ;
 struct ypmatch_ent* strdup (char*) ;
 scalar_t__ time (int *) ;
 int ypmatch_cache_expire (struct dom_binding*) ;

__attribute__((used)) static void
ypmatch_cache_insert(struct dom_binding *ypdb, char *map, keydat *key,
    valdat *val)
{
 struct ypmatch_ent *new;


 if (ypdb->ypmatch_cachecnt)
  ypmatch_cache_expire(ypdb);





 if (ypdb->ypmatch_cachecnt >= YPLIB_MAXCACHE) {
  struct ypmatch_ent *o = ((void*)0), *c = ypdb->cache;
  time_t oldest = 0;

  oldest = ~oldest;

  while (c != ((void*)0)) {
   if (c->ypc_expire_t < oldest) {
    oldest = c->ypc_expire_t;
    o = c;
   }
   c = c->ypc_next;
  }

  if (o == ((void*)0))
   return;
  o->ypc_expire_t = 0;
  ypmatch_cache_expire(ypdb);
 }

 new = malloc(sizeof(struct ypmatch_ent));
 if (new == ((void*)0))
  return;

 new->ypc_map = strdup(map);
 if (new->ypc_map == ((void*)0)) {
  free(new);
  return;
 }
 new->ypc_key.keydat_val = malloc(key->keydat_len);
 if (new->ypc_key.keydat_val == ((void*)0)) {
  free(new->ypc_map);
  free(new);
  return;
 }
 new->ypc_val.valdat_val = malloc(val->valdat_len);
 if (new->ypc_val.valdat_val == ((void*)0)) {
  free(new->ypc_val.valdat_val);
  free(new->ypc_map);
  free(new);
  return;
 }

 new->ypc_expire_t = time(((void*)0)) + YPLIB_EXPIRE;
 new->ypc_key.keydat_len = key->keydat_len;
 new->ypc_val.valdat_len = val->valdat_len;
 bcopy(key->keydat_val, new->ypc_key.keydat_val, key->keydat_len);
 bcopy(val->valdat_val, new->ypc_val.valdat_val, val->valdat_len);

 new->ypc_next = ypdb->cache;
 ypdb->cache = new;

 ypdb->ypmatch_cachecnt++;

 return;
}
