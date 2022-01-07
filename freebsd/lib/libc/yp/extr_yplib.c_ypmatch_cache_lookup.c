
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int valdat_val; int valdat_len; } ;
typedef TYPE_3__ valdat ;
struct TYPE_8__ {int valdat_val; int valdat_len; } ;
struct TYPE_7__ {scalar_t__ keydat_len; int keydat_val; } ;
struct ypmatch_ent {TYPE_2__ ypc_val; TYPE_1__ ypc_key; int ypc_map; struct ypmatch_ent* ypc_next; } ;
struct dom_binding {struct ypmatch_ent* cache; } ;
struct TYPE_10__ {scalar_t__ keydat_len; int keydat_val; } ;
typedef TYPE_4__ keydat ;
typedef int bool_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ bcmp (int ,int ,scalar_t__) ;
 scalar_t__ strcmp (char*,int ) ;
 int ypmatch_cache_expire (struct dom_binding*) ;

__attribute__((used)) static bool_t
ypmatch_cache_lookup(struct dom_binding *ypdb, char *map, keydat *key,
    valdat *val)
{
 struct ypmatch_ent *c;

 ypmatch_cache_expire(ypdb);

 for (c = ypdb->cache; c != ((void*)0); c = c->ypc_next) {
  if (strcmp(map, c->ypc_map))
   continue;
  if (key->keydat_len != c->ypc_key.keydat_len)
   continue;
  if (bcmp(key->keydat_val, c->ypc_key.keydat_val,
    key->keydat_len))
   continue;
 }

 if (c == ((void*)0))
  return(FALSE);

 val->valdat_len = c->ypc_val.valdat_len;
 val->valdat_val = c->ypc_val.valdat_val;

 return(TRUE);
}
